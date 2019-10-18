import 'package:espo_contacts/models/credentials.dart';
import 'package:fish_redux/fish_redux.dart';

enum LoginAction { onLogin }

class LoginActionCreator {
  static Action onLogin(String username, String password) {
    return Action(LoginAction.onLogin,
        payload: Credentials(username, password));
  }
}
