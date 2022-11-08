import 'package:app_joke/di_container.dart';
import 'package:app_joke/presentation/ui/joke/confetti_animation.dart';
import 'package:app_joke/presentation/ui/joke/joke_ramdon.dart';
import 'package:app_joke/presentation/view_model/joke_random_state.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class JokeSection extends ConsumerWidget {
  const JokeSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(jokeRandomViewModelProvider);
    if (state is JokeRandomSuccess) {
      return ConfettiAnimation(child: JokeRamdon(joke: state.joke));
    }

    if (state is JokeRandomLoading) {
      return SizedBox(
        width: 128,
        height: 256,
        child: Image.asset(
          'assets/loop.gif',
          height: 96,
          width: 96,
        ),
      );
    }

    if (state is JokeRandomFailure) {}

    return const _InfoGetRamdonJoke();
  }
}

class _InfoGetRamdonJoke extends StatelessWidget {
  const _InfoGetRamdonJoke({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.search_sharp, size: 56),
          const SizedBox(height: 16),
          AutoSizeText(
            'Press the button for get a ramdon Joke',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.w600,
              fontFamily: 'Open Sans',
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
