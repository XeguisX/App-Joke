import 'package:app_joke/domain/entities/joke.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class JokesFavoritesViewModel extends StateNotifier<List<Joke>> {
  JokesFavoritesViewModel() : super([]);

  void attachJokeFavorite(Joke joke) async {
    joke.isFavorite = true;
    state = [...state, joke];
  }

  void detachJokeFavorite(Joke joke) async {
    joke.isFavorite = false;
    state.remove(joke);
    state = [...state];
  }
}
