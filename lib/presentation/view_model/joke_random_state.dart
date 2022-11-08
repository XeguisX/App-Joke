import 'package:app_joke/domain/entities/joke.dart';

abstract class JokeRandomState {}

class JokeRandomInitial extends JokeRandomState {}

class JokeRandomLoading extends JokeRandomState {}

class JokeRandomSuccess extends JokeRandomState {
  JokeRandomSuccess(this.joke);

  final Joke joke;
}

class JokeRandomFailure extends JokeRandomState {}
