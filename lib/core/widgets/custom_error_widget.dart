import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.triangleExclamation,
          size: 40,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          textAlign: TextAlign.center,
          errMessage,
          style: AppStyles.textStle14,
        ),
      ],
    );
  }
}
