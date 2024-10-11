import 'package:bookly/core/utils/constsants.dart';
import 'package:bookly/features/splash/presentation/view/widgets/sliding_fading_image.dart';
import 'package:bookly/features/splash/presentation/view/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController _slideTextanimationController;
  late AnimationController _fadeeTextanimationController;
  late AnimationController _slideImageanimationController;
  late AnimationController _fadeeImageanimationController;

  late Animation<Offset> slidingTextAnimation;
  late Animation<double> fadeTextAnimation;
  late Animation<Offset> slidingImageAnimation;
  late Animation<double> fadeImageAnimation;

  @override
  void initState() {
    _slideTextanimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    final curvedSlideAnimation = CurvedAnimation(
      parent: _slideTextanimationController,
      curve: Curves.easeOut, // Replace with your desired curve
    );
    slidingTextAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(curvedSlideAnimation);
    _slideTextanimationController.forward();

    _fadeeTextanimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    final curvedFadeAnimation = CurvedAnimation(
      parent: _fadeeTextanimationController,
      curve: Curves.easeOut, // Replace with your desired curve
    );
    fadeTextAnimation = Tween<double>(
      begin: 0,
      end: 100,
    ).animate(curvedFadeAnimation);
    _fadeeTextanimationController.forward();

    _slideImageanimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    final curvedSlideImageAnimation = CurvedAnimation(
        parent: _slideImageanimationController, curve: Curves.easeOut);

    slidingImageAnimation =
        Tween<Offset>(begin: const Offset(-2, 0), end: const Offset(0, 0))
            .animate(curvedSlideImageAnimation);

    _slideImageanimationController.forward();

    _fadeeImageanimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    final curveFadeImageAnimation = CurvedAnimation(
        parent: _fadeeImageanimationController, curve: Curves.easeOut);

    fadeImageAnimation =
        Tween<double>(begin: 0, end: 100).animate(curveFadeImageAnimation);
    _fadeeImageanimationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _slideTextanimationController.dispose();
    _slideImageanimationController.dispose();
    _fadeeImageanimationController.dispose();
    _fadeeTextanimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SlidingFadingImage(
              fadeeImageanimationController: _fadeeImageanimationController,
              slidingImageAnimation: slidingImageAnimation),
          const SizedBox(
            height: AppSize.kDefaultPadding / 2,
          ),
          SlidingFadingText(
              slidingTextAnimation: slidingTextAnimation,
              fadeeTextanimationController: _fadeeTextanimationController),
        ],
      ),
    );
  }
}
