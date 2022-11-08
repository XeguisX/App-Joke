import 'package:app_joke/data/repositories/joke_repository_http.dart';
import 'package:app_joke/domain/entities/joke.dart';
import 'package:app_joke/domain/use_cases/get_joke_ramdon.dart';
import 'package:app_joke/presentation/view_model/joke_random_state.dart';
import 'package:app_joke/presentation/view_model/joke_random_view_model.dart';
import 'package:app_joke/presentation/view_model/jokes_favorites_view_model.dart';
import 'package:app_joke/presentation/view_model/login_state.dart';
import 'package:app_joke/presentation/view_model/login_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final jokeRandomViewModelProvider =
    StateNotifierProvider<JokeRandomViewModel, JokeRandomState>(
  (ref) {
    return JokeRandomViewModel(GetJokeRamdon(JokeRepositoryHttp()));
  },
);

final jokesFavoritesViewModelProvider =
    StateNotifierProvider<JokesFavoritesViewModel, List<Joke>>(
  (ref) {
    return JokesFavoritesViewModel();
  },
);

final loginVieModelProvider = StateNotifierProvider<LoginViewModel, LoginState>(
  (ref) {
    return LoginViewModel();
  },
);
