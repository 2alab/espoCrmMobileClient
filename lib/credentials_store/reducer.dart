import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CredentialsState> buildReducer() {
  return asReducer(
    <Object, Reducer<CredentialsState>>{
      CredentialsAction.signIn: _singIn,
      CredentialsAction.signOut: _signOut,
    },
  );
}

CredentialsState _singIn(CredentialsState state, Action action) {
  final CredentialsState newState = state.clone();
  return newState;
}

CredentialsState _signOut(CredentialsState state, Action action) {
  final CredentialsState newState = state.clone();
  return newState;
}
