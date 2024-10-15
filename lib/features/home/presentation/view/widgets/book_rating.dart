import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "19.9 \$",
          style: AppStyles.textStle20.copyWith(fontWeight: FontWeight.bold),
        ),
        // Spacer(),
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            const SizedBox(width: 6),
            const Text(
              "4.8",
              style: AppStyles.textStle16,
            ),
            const SizedBox(width: 5),
            Text(
              "(2390)",
              style: AppStyles.textStle14.copyWith(
                  color: AppStyles.textStle14.color!.withOpacity(0.5)),
            )
          ],
        )
      ],
    );
  }
}
