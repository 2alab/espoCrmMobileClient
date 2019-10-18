import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CrmState> buildReducer() {
  return asReducer(
    <Object, Reducer<CrmState>>{
      CrmAction.selectTab: _onSelectPage,
    },
  );
}

CrmState _onSelectPage(CrmState state, Action action) {
  final CrmState newState = state.clone();
  newState.selectedPage = action.payload;
  return newState;
}
