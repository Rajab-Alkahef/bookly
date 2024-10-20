import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/image_links.dart';
import 'package:bookly/features/home/data/models/book_model/volume_info.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/view/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/view/widgets/cutsom_book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: const CustomBookImage(
            imageUrl:
                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.canva.com%2Fbook-covers%2Ftemplates%2Fphoto%2F&psig=AOvVaw05dfRsvv7PqIV9zJ_9XA9F&ust=1729496069453000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNC6xIi5nIkDFQAAAAAdAAAAABAE",
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        const Text(
          "The jungle Book",
          style: AppStyles.textStle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            "Rudya jonson",
            style: AppStyles.textStle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const BookRating(
          volumeInfo: VolumeInfo(
              imageLinks: ImageLinks(
                  smallThumbnail: "smallThumbnail", thumbnail: "thumbnail")),
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 30,
        ),
        const BooksAction(),
      ],
    );
  }
}
