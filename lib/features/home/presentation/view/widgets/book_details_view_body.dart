import 'package:bookly/core/utils/constsants.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSize.kDefaultPadding + 10),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(
                  height: AppSize.kDefaultPadding + 10,
                ),
                BookDetailSection(
                  bookModel: bookModel,
                ),
                const SizedBox(
                  height: 50,
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
