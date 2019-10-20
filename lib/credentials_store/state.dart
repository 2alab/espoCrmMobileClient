import 'package:espo_contacts/models/credentials.dart';
import 'package:fish_redux/fish_redux.dart';

abstract class CredentialsBaseState {
  Credentials get credentials;

  set credentials(Credentials credentials);

  bool isNotAuthorised() {
    return null == credentials;
  }
}

class CredentialsState extends CredentialsBaseState
    implements Cloneable<CredentialsState> {

  @override
  Credentials credentials;

  CredentialsState() {}

  @override
  CredentialsState clone() {
    return CredentialsState()..credentials = credentials;
  }
}
