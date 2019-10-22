import 'dart:convert';
import 'package:espo_contacts/models/credentials.dart';
import 'package:espo_contacts/models/lead.dart';
import 'package:espo_contacts/models/user.dart';
import 'package:http_auth/http_auth.dart' as http_auth;
import 'package:json_annotation/json_annotation.dart';

Future<User> getUser(Credentials credentials) async {
  var client =
      http_auth.BasicAuthClient(credentials.username, credentials.password);

  var uri = Uri.https(credentials.host, "/api/v1/App/user");
  var response = await client.get(uri);

  switch (response.statusCode) {
    case 200:
      return User.fromJson(jsonDecode(response.body)['user']);
    case 401:
      throw new UnauthorizedException();
    default:
      throw new Exception("unsopported response");
  }
}

Future<LeadsResponse> getLeads(Credentials credentials,
    {maxSize = 20, offset = 0}) async {
  var client =
      http_auth.BasicAuthClient(credentials.username, credentials.password);

  var queryParameters = {"maxSize": "$maxSize", "offset": "$offset"};
  var uri = Uri.https(credentials.host, "/api/v1/Lead", queryParameters);
  var response = await client.get(uri);


  switch (response.statusCode) {
    case 200:
      return LeadsResponse.fromJson(jsonDecode(response.body));
    case 401:
      throw new UnauthorizedException();
    default:
      throw new Exception("unsopported response");
  }
}

class UnauthorizedException {}
