import 'package:app_joke/domain/entities/joke.dart';

Joke jokeJsonToDomain(Map<String, dynamic> jokeJson) {
  return Joke(
    id: jokeJson['id'],
    url: jokeJson['url'],
    createdAt: DateTime.parse(jokeJson['created_at']),
    description: jokeJson['value'],
  );
}
