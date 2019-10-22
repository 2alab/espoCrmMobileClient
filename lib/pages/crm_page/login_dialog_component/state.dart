import 'package:espo_contacts/models/credentials.dart';
import 'package:fish_redux/fish_redux.dart';

class LoginDialogState implements Cloneable<LoginDialogState> {
  Credentials credentials;

  String errorMessage;

  LoginDialogState() {
    credentials = Credentials("","", "");
  }

  @override
  LoginDialogState clone() {
    return LoginDialogState()
      ..credentials = credentials
      ..errorMessage = errorMessage;
  }
}



