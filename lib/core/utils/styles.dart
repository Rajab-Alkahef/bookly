import 'package:bookly/core/utils/constsants.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleBold24() {
    return const TextStyle(
        // color: Color(0xff064061),
        fontSize: 24,
        // fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleSemiBold20() {
    return const TextStyle(
        // color: Color(0xff064061),
        fontSize: 20,
        // fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500);
  }

  static const textStle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const textStle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    // fontFamily: AppConstants.kGtSectraFine,
  );

  static const textStle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    fontFamily: AppConstants.kGtSectraFine,
  );
  static const textStle14 = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const textStle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
