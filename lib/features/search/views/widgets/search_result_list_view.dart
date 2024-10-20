import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/models/book_model/image_links.dart';
import 'package:bookly/features/home/data/models/book_model/volume_info.dart';
import 'package:bookly/features/home/presentation/view/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BooksListViewItem(
            bookModel: BookModel(
                volumeInfo: VolumeInfo(
                    imageLinks: ImageLinks(
                        smallThumbnail: "smallThumbnail",
                        thumbnail: "thumbnail"))),
            // bookName: "dd",
            // author: "fddf",
            // imageUrl:
            //     "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.canva.com%2Fbook-covers%2Ftemplates%2Fphoto%2F&psig=AOvVaw05dfRsvv7PqIV9zJ_9XA9F&ust=1729496069453000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNC6xIi5nIkDFQAAAAAdAAAAABAE",
          ),
        );
      },
    );
  }
}
