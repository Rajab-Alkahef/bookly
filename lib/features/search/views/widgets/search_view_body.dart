import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/search/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomSearchTextField(),
          const SizedBox(
            height: 32,
          ),
          Text(
            "Best Seller",
            style: AppStyles.styleBold24(),
          ),
          const SizedBox(
            height: 17,
          ),
          const Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
