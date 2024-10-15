import 'package:bookly/core/utils/constsants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const Padding(
          padding: EdgeInsets.only(left: AppSize.kDefaultPadding),
          child: FeaturedBooksListView(),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSize.kDefaultPadding),
          child: Text(
            "Best Seller",
            style: AppStyles.styleBold24(),
          ),
        ),
        const BestSellerListViewItem(),
      ],
    );
  }
}
