import 'package:flutter_driver/driver_extension.dart';
import 'package:espo_contacts/main.dart' as app;

import 'messages.dart';



void main() {
  enableFlutterDriverExtension(handler: (messageStr) {
    var message = Messages.values.firstWhere((v) => v.toString() == messageStr);
    switch (message) {
      case Messages.resetAuth:
        break;
    }

    return Future.value("ok");
  });

  app.main();
}
