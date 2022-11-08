import 'dart:async';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ConfettiAnimation extends StatefulWidget {
  const ConfettiAnimation({super.key, required this.child});

  final Widget child;

  @override
  State<ConfettiAnimation> createState() => _ConfettiAnimationState();
}

class _ConfettiAnimationState extends State<ConfettiAnimation> {
  @override
  void initState() {
    super.initState();
    controller.play();
    Timer(const Duration(milliseconds: 500), () {
      controller.stop();
    });
  }

  final bool isPlaying = false;
  final controller = ConfettiController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        widget.child,
        ConfettiWidget(
          confettiController: controller,
          shouldLoop: true,
          blastDirectionality: BlastDirectionality.explosive,
          numberOfParticles: 16,
        )
      ],
    );
  }
}
