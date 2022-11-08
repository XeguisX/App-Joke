import 'dart:math';

import 'package:app_joke/di_container.dart';
import 'package:app_joke/domain/entities/joke.dart';
import 'package:app_joke/presentation/ui/joke/confetti_animation.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class JokeRamdon extends ConsumerWidget {
  const JokeRamdon({super.key, required this.joke});

  final Joke joke;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    ref.watch(jokesFavoritesViewModelProvider);
    return Stack(
      children: [
        Container(
          height: size.height * 0.34,
          padding: const EdgeInsets.all(32.0),
          margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(48),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200]!,
                offset: const Offset(0, 8),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Center(
            child: AutoSizeText(
              joke.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans',
                fontSize: 24,
              ),
            ),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              if (joke.isFavorite) {
                ref
                    .read(jokesFavoritesViewModelProvider.notifier)
                    .detachJokeFavorite(joke);
              } else {
                ref
                    .read(jokesFavoritesViewModelProvider.notifier)
                    .attachJokeFavorite(joke);
              }
            },
            style: ElevatedButton.styleFrom(
              elevation: 8,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
              backgroundColor: Colors.yellow[600], // <-- Button color
              foregroundColor: Colors.orangeAccent, // <-- Splash color
            ),
            child: Icon(
              joke.isFavorite ? Icons.star : Icons.star_outline_rounded,
              color: Colors.white,
              size: 42,
            ),
          ),
        ),
      ],
    );
  }
}
