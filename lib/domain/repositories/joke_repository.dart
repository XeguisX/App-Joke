import 'package:app_joke/domain/entities/joke.dart';

abstract class JokeRepository {
  Future<Joke> getJokeRamdon();
}
