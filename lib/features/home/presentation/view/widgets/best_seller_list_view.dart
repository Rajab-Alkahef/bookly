import 'package:bookly/core/utils/constsants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(ImageAssets.test),
                ),
              ),
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: Text(
                  maxLines: 2,
                  // softWrap: true,
                  // maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  "Harry Potter and the Goblet of Fire",
                  style: AppStyles.styleSemiBold20(),
                ),
              ),
              const Text("3.K follds"),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("19.9\$"),
                  // Spacer(),
                  SizedBox(
                    width: 100,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text("4.8"),
                  Text("(2390)")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
