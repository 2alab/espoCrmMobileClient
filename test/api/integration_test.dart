import 'package:espo_contacts/models/credentials.dart';
import 'package:test/test.dart';

import 'package:espo_contacts/api/espo_api.dart' as espo;

const baseUrl = "demo2.espocrm.com";

final demoCredentials = Credentials("admin", "1");

void main() {
  test('Login test', () async {
    var user = await espo.getUser(baseUrl, demoCredentials);

    expect(user.name, "Admin");
  });

  test('Get Leads', () async {
    var leadsResponse = await espo.getLeads(baseUrl, demoCredentials);

    expect(leadsResponse.total, isPositive);
    expect(leadsResponse.list, isNotEmpty);
  });
}
