import 'package:bookly/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: const Color(0xff100e23)),
      home: const SplashView(),
    );
  }
}
