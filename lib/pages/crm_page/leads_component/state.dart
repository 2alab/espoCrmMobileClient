import 'package:espo_contacts/credentials_store/state.dart';
import 'package:espo_contacts/models/credentials.dart';
import 'package:espo_contacts/pages/crm_page/login_button_component/state.dart';
import 'package:fish_redux/fish_redux.dart';

class LeadsState extends CredentialsBaseState implements Cloneable<LeadsState> {
  @override
  Credentials credentials;

  @override
  LeadsState clone() {
    return LeadsState();
  }
}

LeadsState initState(Map<String, dynamic> args) {
  return LeadsState();
}

class LoginButtonConnector extends ConnOp<LeadsState, LoginButtonState> {
  @override
  LoginButtonState get(LeadsState state) {
    return LoginButtonState();
  }
}
