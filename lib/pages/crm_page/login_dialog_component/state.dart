import 'package:fish_redux/fish_redux.dart';

class LoginDialogState implements Cloneable<LoginDialogState> {

  @override
  LoginDialogState clone() {
    return LoginDialogState();
  }
}

LoginDialogState initState(Map<String, dynamic> args) {
  return LoginDialogState();
}
