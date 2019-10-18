import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'reducer.dart';
import 'state.dart';

class FavoritesStore {
  static Store<FavoritesState> _globalStore;

  static Store<FavoritesState> get store =>
      _globalStore ??= createStore<FavoritesState>(
          FavoritesState(), buildReducer());
}
