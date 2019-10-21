import 'package:espo_contacts/credentials_store/state.dart';
import 'package:espo_contacts/models/credentials.dart';
import 'package:espo_contacts/pages/crm_page/login_placeholder_component/state.dart';
import 'package:espo_contacts/pages/crm_page/login_dialog_component/state.dart';
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

class LoginPlaceholderConnector extends ConnOp<LeadsState, LoginPlaceholderState> {
  @override
  LoginPlaceholderState get(LeadsState state) {
    return LoginPlaceholderState();
  }
}

