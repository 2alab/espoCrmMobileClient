import 'package:fish_redux/fish_redux.dart';

enum LoginDialogAction {
  onShowAuthDialog,
  onCloseAuthDialog,
  onAuth,
  authSuccess,
  authFail
}

class LoginDialogActionCreator {

  static Action onShowAuthDialog() {
    return const Action(LoginDialogAction.onShowAuthDialog);
  }

  static Action onCloseAuthDialog() {
    return const Action(LoginDialogAction.onCloseAuthDialog);
  }

  static Action onAuth() {
    return const Action(LoginDialogAction.onAuth);
  }

  static Action authSuccess() {
    return const Action(LoginDialogAction.authSuccess);
  }

  static Action authFail() {
    return const Action(LoginDialogAction.authFail);
  }
}
