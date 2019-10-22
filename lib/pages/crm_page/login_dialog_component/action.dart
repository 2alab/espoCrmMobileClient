import 'package:espo_contacts/models/credentials.dart';
import 'package:espo_contacts/models/user.dart';
import 'package:fish_redux/fish_redux.dart';

enum LoginDialogAction { onCloseAuthDialog, onAuth, authSuccess, authFail }

class LoginDialogActionCreator {
  static Action onCloseAuthDialog() {
    return const Action(LoginDialogAction.onCloseAuthDialog);
  }

  static Action onAuth(Credentials credentials) {
    return Action(LoginDialogAction.onAuth, payload: credentials);
  }

  static Action authSuccess(Credentials credentials) {
    return Action(LoginDialogAction.authSuccess,
        payload: AuthResult(credentials));
  }

  static Action authFail(String message, Credentials credentials) {
    return Action(LoginDialogAction.authFail,
        payload: AuthResult(credentials, errorMessage: message));
  }
}

class AuthResult {
  String errorMessage;

  Credentials credentials;

  AuthResult(this.credentials, {this.errorMessage});
}
