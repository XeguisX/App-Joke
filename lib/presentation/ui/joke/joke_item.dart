import 'package:app_joke/domain/entities/joke.dart';
import 'package:flutter/material.dart';

class JokeItem extends StatelessWidget {
  const JokeItem({super.key, required this.joke});

  final Joke joke;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FadeInImage(
              placeholder: const AssetImage('assets/no-image.jpg'),
              image: AssetImage(joke.iconUrl)),
          Text(joke.description),
          Text(joke.createdAt.toString()),
        ],
      ),
    );
  }
}
