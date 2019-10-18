import 'dart:collection';
import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';
import 'package:hhr_mobile/favorites_store/db/favarites_db_helper.dart';
import 'package:hhr_mobile/models/song.dart';
import 'package:sqflite/sqflite.dart';

abstract class FavoritesBaseState {
  List<Song> get favoriteSongs;

  set favoriteSongs(List<Song> favoriteSongs);
}

class FavoritesState implements FavoritesBaseState, Cloneable<FavoritesState> {
  static const storageKey = "favorite_songs";
  FavoritesProvider _favoritesProvider;
  List<Song> favoriteSongs = [];

  FavoritesState() {
    _favoritesProvider = FavoritesProvider();
    _init();
  }

  void addToFavorites(Song song) {
    favoriteSongs.insert(0,song);
    _favoritesProvider.insert(song);
  }

  void removeFromFavorites(Song song) {
    favoriteSongs.remove(song);
    _favoritesProvider.delete(song);
  }

  FavoritesState.clone(this.favoriteSongs, this._favoritesProvider);

  @override
  FavoritesState clone() {
    return FavoritesState.clone(List.from(favoriteSongs), _favoritesProvider);
  }

  Future _init() async {
    await _favoritesProvider.open(storageKey);
    List<Song> all = await _favoritesProvider.getAll();

    if (null == all) {
      favoriteSongs = List();
    } else {
      favoriteSongs = all;
    }
  }
}
