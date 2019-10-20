import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LoginButtonState> buildReducer() {
  return asReducer(
    <Object, Reducer<LoginButtonState>>{
      LoginButtonAction.onShowLoginForm: _onAction,
    },
  );
}

LoginButtonState _onAction(LoginButtonState state, Action action) {
  final LoginButtonState newState = state.clone();
  return newState;
}
