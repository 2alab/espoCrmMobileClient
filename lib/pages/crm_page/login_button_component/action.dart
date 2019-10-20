import 'package:fish_redux/fish_redux.dart';

enum LoginButtonAction { onShowLoginForm }

class LoginButtonActionCreator {
  static Action onShowLoginForm() {
    return const Action(LoginButtonAction.onShowLoginForm);
  }
}
