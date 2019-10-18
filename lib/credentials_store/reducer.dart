import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FavoritesState> buildReducer() {
  return asReducer(
    <Object, Reducer<FavoritesState>>{
      FavoritesAction.addToFavorites: _addToFavorites,
      FavoritesAction.removeFromFavorites: _removeFromFavorites,
    },
  );
}

FavoritesState _addToFavorites(FavoritesState state, Action action) {
  final FavoritesState newState = state.clone();
  newState.addToFavorites(action.payload);
  return newState;
}

FavoritesState _removeFromFavorites(FavoritesState state, Action action) {
  final FavoritesState newState = state.clone();
  newState.removeFromFavorites(action.payload);
  return newState;
}
