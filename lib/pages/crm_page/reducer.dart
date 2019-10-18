import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CrmState> buildReducer() {
  return asReducer(
    <Object, Reducer<CrmState>>{
      CrmAction.action: _onAction,
    },
  );
}

CrmState _onAction(CrmState state, Action action) {
  final CrmState newState = state.clone();
  return newState;
}
