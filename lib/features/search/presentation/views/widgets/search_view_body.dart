import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/search/presentation/manager/fetach_searched_book_cubit/fetch_searched_books_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  SearchViewBody({super.key});
  bool searched = false;
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
            "Search results",
            style: AppStyles.styleBold24(),
          ),
          const SizedBox(
            height: 17,
          ),
          BlocConsumer<FetchSearchedBooksCubit, FetchSearchedBooksState>(
            builder: (context, state) {
              if (searched) {
                return const Expanded(
                  child: SearchResultListView(),
                );
              } else {
                // print(state);
                if (state is FetchSearchedBooksInitial) {
                  return const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Please search for a book...",
                            style: AppStyles.textStle20,
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return const Expanded(child: CustomLoadingIndicator());
                }
              }
            },
            listener: (context, state) {
              searched =
                  BlocProvider.of<FetchSearchedBooksCubit>(context).searched;
              // print(searched);
            },
          )
          // BlocProvider.of<FetchSearchedBooksCubit>(context).searched == true
          //     ? const Expanded(
          //         child: SearchResultListView(),
          //       )
          //     : const Expanded(
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Center(
          //               child: Text(
          //                 textAlign: TextAlign.center,
          //                 "Please search for a book...",
          //                 style: AppStyles.textStle20,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
        ],
      ),
    );
  }
}
