import 'package:bookly/core/widgets/cached_network_image_widget.dart';
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
          child: CachedNetworkImageWidget(imageUrl: imageUrl)
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
