import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'reducer.dart';
import 'state.dart';

class CredentialsStore {
  static Store<CredentialsState> _globalStore;

  static Store<CredentialsState> get store =>
      _globalStore ??= createStore<CredentialsState>(
          CredentialsState(), buildReducer());
}
