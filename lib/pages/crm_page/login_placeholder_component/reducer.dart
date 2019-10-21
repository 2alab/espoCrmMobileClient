import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LoginPlaceholderState> buildReducer() {
  return asReducer(
    <Object, Reducer<LoginPlaceholderState>>{
      LoginPlaceholderAction.onShowLoginForm: _onAction,
    },
  );
}

LoginPlaceholderState _onAction(LoginPlaceholderState state, Action action) {
  final LoginPlaceholderState newState = state.clone();
  return newState;
}
