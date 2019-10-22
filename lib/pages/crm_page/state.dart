import 'package:espo_contacts/credentials_store/state.dart';
import 'package:espo_contacts/credentials_store/store.dart';
import 'package:espo_contacts/models/credentials.dart';
import 'package:espo_contacts/pages/crm_page/leads_component/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'login_dialog_component/state.dart';

class CrmState implements Cloneable<CrmState> {
  int selectedPage;

  LoginDialogState _loginDialogState;

  LeadsState _leadsState;

  @override
  CrmState clone() {
    return CrmState()
      ..selectedPage = selectedPage
      .._loginDialogState = _loginDialogState;
  }
}

CrmState initState(Map<String, dynamic> args) {
  return CrmState()
    ..selectedPage = 0
    .._loginDialogState = new LoginDialogState()
    .._leadsState = new LeadsState();
}

class LeadsConnector extends ConnOp<CrmState, LeadsState> {
  @override
  LeadsState get(CrmState state) {
    return state._leadsState;
  }

  @override
  void set(CrmState state, LeadsState subState) {
    state._leadsState = subState;
  }
}

class LoginDialogConnector extends ConnOp<CrmState, LoginDialogState> {
  @override
  LoginDialogState get(CrmState state) {
    return state._loginDialogState;
  }

  @override
  void set(CrmState state, LoginDialogState subState) {
    state._loginDialogState = subState;
  }
}
