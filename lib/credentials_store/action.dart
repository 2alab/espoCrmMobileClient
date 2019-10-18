import 'package:fish_redux/fish_redux.dart';
import 'package:hhr_mobile/models/song.dart';

enum FavoritesAction { addToFavorites, removeFromFavorites }

class FavoritesActionCreator {
  static Action addToFavorites(Song song) {
    return  Action(FavoritesAction.addToFavorites, payload: song);
  }

  static Action removeFromFavorites(Song song) {
    return  Action(FavoritesAction.removeFromFavorites, payload: song);
  }
}
