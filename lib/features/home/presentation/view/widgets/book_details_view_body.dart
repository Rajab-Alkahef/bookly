import 'package:bookly/core/utils/constsants.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/cutsom_book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: AppSize.kDefaultPadding + 10),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(
            height: AppSize.kDefaultPadding + 10,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .17),
              child: const CustomBookImage()),
        ],
      ),
    );
  }
}
