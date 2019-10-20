import 'package:fish_redux/fish_redux.dart';

class LoginButtonState implements Cloneable<LoginButtonState> {

  @override
  LoginButtonState clone() {
    return LoginButtonState();
  }
}

LoginButtonState initState(Map<String, dynamic> args) {
  return LoginButtonState();
}
