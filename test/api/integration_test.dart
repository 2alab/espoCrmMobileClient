import 'package:espo_contacts/models/credentials.dart';
import 'package:test/test.dart';

import 'package:espo_contacts/api/espo_api.dart' as espo;

const baseUrl = "demo2.espocrm.com";

final demoCredentials = Credentials(baseUrl, "admin", "1");

void main() {
  test('Login test', () async {
    var user = await espo.getUser(demoCredentials);

    expect(user.name, "Admin");
  });

  test('Wrong login', () async {
    final wrongCredentials = Credentials(baseUrl, "wrong", "1");
    try {
      await espo.getUser(wrongCredentials);
      fail("exception not thrown");
    } catch (e) {
      expect(e, isA<espo.UnauthorizedException>());
    }
  });

  test('Get Leads', () async {
    var leadsResponse = await espo.getLeads(demoCredentials);

    expect(leadsResponse.total, isPositive);
    expect(leadsResponse.list, isNotEmpty);
  });
}
