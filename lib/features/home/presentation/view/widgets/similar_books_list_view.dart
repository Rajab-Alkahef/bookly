import 'package:bookly/features/home/presentation/view/widgets/cutsom_book_image_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CustomBookImage(
              imageUrl:
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.canva.com%2Fbook-covers%2Ftemplates%2Fphoto%2F&psig=AOvVaw05dfRsvv7PqIV9zJ_9XA9F&ust=1729496069453000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNC6xIi5nIkDFQAAAAAdAAAAABAE',
            ),
          );
        },
      ),
    );
  }
}
