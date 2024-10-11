import 'package:bookly/core/utils/constsants.dart';
import 'package:flutter/material.dart';

class SlidingFadingImage extends StatelessWidget {
  const SlidingFadingImage({
    super.key,
    required AnimationController fadeeImageanimationController,
    required this.slidingImageAnimation,
  }) : _fadeeImageanimationController = fadeeImageanimationController;

  final AnimationController _fadeeImageanimationController;
  final Animation<Offset> slidingImageAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _fadeeImageanimationController,
        builder: (context, _) {
          return FadeTransition(
            opacity: _fadeeImageanimationController,
            child: SlideTransition(
                position: slidingImageAnimation,
                child: Image.asset(ImageAssets.logo)),
          );
        });
  }
}
