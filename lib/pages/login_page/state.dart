import 'package:espo_contacts/credentials_store/state.dart';
import 'package:espo_contacts/models/credentials.dart';
import 'package:fish_redux/fish_redux.dart';

class LoginState extends CredentialsBaseState implements Cloneable<LoginState> {
  @override
  Credentials credentials;

  @override
  LoginState clone() {
    return LoginState()..credentials = credentials;
  }
}

LoginState initState(Map<String, dynamic> args) {
  return LoginState();
}
