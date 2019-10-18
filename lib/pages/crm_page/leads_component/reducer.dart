import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LeadsState> buildReducer() {
  return asReducer(
    <Object, Reducer<LeadsState>>{
      LeadsAction.action: _onAction,
    },
  );
}

LeadsState _onAction(LeadsState state, Action action) {
  final LeadsState newState = state.clone();
  return newState;
}
