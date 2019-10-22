// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import 'messages.dart';

void main() {
  group('Authorize', () {
    final errorMessage = find.byValueKey('errorMessage');

    final hostField = find.byValueKey('host');
    final usernameField = find.byValueKey('username');
    final passwordField = find.byValueKey('password');

    final loginButton = find.byValueKey('loginButton');

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
      var requestData = await driver.requestData("${Messages.resetAuth}");
      expect(requestData, "ok");

      Health health = await driver.checkHealth();
      expect(health.status, HealthStatus.ok);
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Wrong password', () async {
      await driver.tap(hostField);
      await driver.enterText("demo2.espocrm.com");

      await driver.tap(usernameField);
      await driver.enterText("wrong");

      await driver.tap(passwordField);
      await driver.enterText("wrongPass");

      await driver.tap(loginButton);

      var s = await driver.getText(errorMessage);
      expect(s, "Wrong credentials");
      await driver.waitFor(loginButton);
    });

    test('Success password', () async {
      await driver.tap(hostField);
      await driver.enterText("demo2.espocrm.com");

      await driver.tap(usernameField);
      await driver.enterText("admin");

      await driver.tap(passwordField);
      await driver.enterText("1");

      await driver.tap(loginButton);

      await driver.waitForAbsent(loginButton);
    });
  });
}
