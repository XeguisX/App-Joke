import 'package:app_joke/presentation/ui/home/home_buttons.dart';
import 'package:app_joke/presentation/ui/joke/joke_section.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.76,
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
      child: Column(
        children: const [
          SizedBox(height: 16),
          JokeSection(),
          HomeButtons(),
        ],
      ),
    );
  }
}
