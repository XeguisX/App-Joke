import 'package:app_joke/di_container.dart';
import 'package:app_joke/presentation/ui/joke/joke_ramdon.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class JokeList extends ConsumerWidget {
  const JokeList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jokes = ref.watch(jokesFavoritesViewModelProvider);
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            const Text(
              'Favorites Jokes',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Amount : ${jokes.length}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 6),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(42),
            topRight: Radius.circular(42),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(5, 5),
              blurRadius: 20,
              spreadRadius: 2,
            ),
          ],
        ),
        child: jokes.isEmpty
            ? const _FavoritesJokesEmpty()
            : ListView.builder(
                itemCount: jokes.length,
                itemBuilder: (_, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: JokeRamdon(joke: jokes[index]),
                  );
                },
              ),
      ),
    );
  }
}

class _FavoritesJokesEmpty extends StatelessWidget {
  const _FavoritesJokesEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ListView(children: [
      Container(
        height: size.height * 0.34,
        padding: const EdgeInsets.all(32.0),
        margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.upcoming_outlined, size: 56),
            const SizedBox(height: 16),
            AutoSizeText(
              "Don't have favorites jokes",
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
      ),
    ]);
  }
}
