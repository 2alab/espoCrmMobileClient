import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LoginDialogState> buildReducer() {
  return asReducer(
    <Object, Reducer<LoginDialogState>>{
      LoginDialogAction.authSuccess: _onAction,
    },
  );
}

LoginDialogState _onAction(LoginDialogState state, Action action) {
  final LoginDialogState newState = state.clone();
  return newState;
}
