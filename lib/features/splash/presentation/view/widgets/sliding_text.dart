import 'package:flutter/material.dart';

class SlidingFadingText extends StatelessWidget {
  const SlidingFadingText({
    super.key,
    required this.slidingTextAnimation,
    required AnimationController fadeeTextanimationController,
  }) : _fadeeTextanimationController = fadeeTextanimationController;

  final Animation<Offset> slidingTextAnimation;
  final AnimationController _fadeeTextanimationController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingTextAnimation,
        builder: (context, _) {
          return FadeTransition(
            opacity: _fadeeTextanimationController,
            child: SlideTransition(
              position: slidingTextAnimation,
              child: const Text(
                "Read Books for free",
                textAlign: TextAlign.center,
                // style: TextStyle(),
              ),
            ),
          );
        });
  }
}
