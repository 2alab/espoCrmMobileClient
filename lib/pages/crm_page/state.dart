import 'package:espo_contacts/credentials_store/state.dart';
import 'package:espo_contacts/credentials_store/store.dart';
import 'package:espo_contacts/models/credentials.dart';
import 'package:espo_contacts/pages/crm_page/leads_component/state.dart';
import 'package:fish_redux/fish_redux.dart';

class CrmState implements Cloneable<CrmState>, CredentialsBaseState {
  int selectedPage;

  @override
  Credentials credentials;

  @override
  CrmState clone() {
    return CrmState()
      ..selectedPage = selectedPage
      ..credentials = credentials;
  }
}

CrmState initState(Map<String, dynamic> args) {
  return CrmState()..selectedPage = 0;
}

class LeadsConnector extends ConnOp<CrmState, LeadsState> {
  @override
  LeadsState get(CrmState state) {
    var playerPanelState = new LeadsState();
    return playerPanelState;
  }
}
