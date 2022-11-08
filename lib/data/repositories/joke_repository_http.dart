import 'dart:convert';

import 'package:app_joke/data/mappers/joke_mapper.dart';
import 'package:app_joke/domain/entities/joke.dart';
import 'package:app_joke/domain/repositories/joke_repository.dart';
import 'package:http/http.dart' as http;

class JokeRepositoryHttp extends JokeRepository {
  @override
  Future<Joke> getJokeRamdon() async {
    final url = Uri.https('api.chucknorris.io', 'jokes/random');
    final response = await http.get(url);
    final jokeJson = json.decode(response.body);

    return jokeJsonToDomain(jokeJson);
  }
}
