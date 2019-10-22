import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LoginDialogState> buildReducer() {
  return asReducer(
    <Object, Reducer<LoginDialogState>>{
      LoginDialogAction.authFail: _onAuthFail,
      LoginDialogAction.authSuccess: _onAuthSuccess,
    },
  );
}

LoginDialogState _onAuthFail(LoginDialogState state, Action action) {
  AuthResult payload = action.payload;
  final LoginDialogState newState = state.clone()
    ..errorMessage = payload.errorMessage
    ..credentials = payload.credentials;

  return newState;
}

LoginDialogState _onAuthSuccess(LoginDialogState state, Action action) {
  AuthResult payload = action.payload;
  final LoginDialogState newState = state.clone()
  ..credentials = payload.credentials;
  return newState;
}
