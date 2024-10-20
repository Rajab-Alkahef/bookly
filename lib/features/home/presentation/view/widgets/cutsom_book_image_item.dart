import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 2.8 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            placeholder: (context, url) => Container(
              color: const Color.fromARGB(255, 45, 0, 77),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            errorWidget: (context, url, error) {
              return Container(
                color: const Color.fromARGB(255, 45, 0, 77),
                child: const CustomErrorWidget(
                  errMessage: "Oops there was an error while loading image!",
                ),
              );
            },
            imageUrl: imageUrl,
          )
          //  Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(16),
          //     // color: Colors.red,
          //     image: DecorationImage(
          //       fit: BoxFit.fill,
          //       image: NetworkImage(imageUrl),
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
