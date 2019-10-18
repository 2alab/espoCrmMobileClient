import 'package:espo_contacts/models/credentials.dart';
import 'package:fish_redux/fish_redux.dart';

abstract class CredentialsBaseState {
  Credentials get credentials;

  set credentials(Credentials credentials);
}

class CredentialsState
    implements CredentialsBaseState, Cloneable<CredentialsState> {
  Credentials credentials;

  CredentialsState() {}

  @override
  CredentialsState clone() {
    return CredentialsState()..credentials = credentials;
  }
}
