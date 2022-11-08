import 'package:app_joke/domain/entities/joke.dart';
import 'package:app_joke/domain/repositories/joke_repository.dart';

class GetJokeRamdon {
  GetJokeRamdon(this._jokeRepositoy);

  final JokeRepository _jokeRepositoy;

  Future<Joke> call() async {
    final joke = await _jokeRepositoy.getJokeRamdon();
    return joke;
  }
}
