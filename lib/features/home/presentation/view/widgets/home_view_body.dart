import 'package:bookly/core/utils/constsants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/newest_books_list_view.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
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
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.kDefaultPadding),
                child: Text(
                  "Newest Books",
                  style: AppStyles.styleBold24(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          // hasScrollBody: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.kDefaultPadding),
            child: NewestBooksListView(),
          ),
        ),
        // const SliverToBoxAdapter(
        //     child: SizedBox(
        //   height: 100,
        // ))
      ],
    );
  }
}
