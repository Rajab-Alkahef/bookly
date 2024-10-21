import 'package:bookly/features/search/presentation/manager/fetach_searched_book_cubit/fetch_searched_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        textEditingController.text = value;
        // print(textEditingController.text);
      },
      onSubmitted: (value) {
        // print(textEditingController.text);
        BlocProvider.of<FetchSearchedBooksCubit>(context)
            .fetchSearchedBooks(textEditingController.text);
      },
      decoration: InputDecoration(
          enabledBorder: buildOutlinedBorder(),
          focusedBorder: buildOutlinedBorder(),
          hintText: "Search....",
          suffixIcon: Opacity(
            opacity: .7,
            child: IconButton(
              onPressed: () {
                BlocProvider.of<FetchSearchedBooksCubit>(context)
                    .fetchSearchedBooks(textEditingController.text);
              },
              icon: const Icon(size: 17, FontAwesomeIcons.magnifyingGlass),
            ),
          )),
    );
  }

  OutlineInputBorder buildOutlinedBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
