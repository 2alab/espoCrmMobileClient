import 'package:fish_redux/fish_redux.dart';

class LoginPlaceholderState implements Cloneable<LoginPlaceholderState> {

  @override
  LoginPlaceholderState clone() {
    return LoginPlaceholderState();
  }
}

LoginPlaceholderState initState(Map<String, dynamic> args) {
  return LoginPlaceholderState();
}
