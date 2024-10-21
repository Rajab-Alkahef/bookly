import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/constsants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/cached_network_image_widget.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({
    super.key,
    required this.bookModel,
  });
  // final String imageUrl;
  // final String bookName;
  // final String author;
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetailsView,
          extra: bookModel,
        );
      },
      child: SizedBox(
        height: 130,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImageWidget(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                    "https://plus.unsplash.com/premium_photo-1669652639337-c513cc42ead6?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      maxLines: 2,
                      // softWrap: true,
                      // maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      bookModel.volumeInfo.title!,
                      style: AppStyles.textStle20.copyWith(
                          fontFamily: AppConstants.kGtSectraFine,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors?[0] ?? " ",
                    style: AppStyles.textStle14.copyWith(
                        color: Colors.white.withOpacity(0.5),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Free",
                        style: AppStyles.textStle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      BookRating(
                        volumeInfo: bookModel.volumeInfo,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
