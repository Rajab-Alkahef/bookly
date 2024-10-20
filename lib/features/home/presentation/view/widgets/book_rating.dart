import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/volume_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.volumeInfo,
  });
  final VolumeInfo volumeInfo;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          size: 14,
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        const SizedBox(width: 6),
        Text(
          volumeInfo.averageRating == null
              ? "0"
              : volumeInfo.averageRating.toString(),
          style: AppStyles.textStle16,
        ),
        const SizedBox(width: 5),
        Text(
          volumeInfo.ratingsCount == null
              ? "(0)"
              : "(${volumeInfo.ratingsCount})",
          style: AppStyles.textStle14.copyWith(
            color: AppStyles.textStle14.color!.withOpacity(0.5),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
