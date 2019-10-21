import 'package:fish_redux/fish_redux.dart';

enum LoginPlaceholderAction { onShowLoginForm }

class LoginPlaceholderActionCreator {
  static Action onShowLoginForm() {
    return const Action(LoginPlaceholderAction.onShowLoginForm);
  }
}
