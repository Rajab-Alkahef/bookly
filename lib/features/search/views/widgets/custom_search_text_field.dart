import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: buildOutlinedBorder(),
          focusedBorder: buildOutlinedBorder(),
          hintText: "Search....",
          suffixIcon: Opacity(
            opacity: .7,
            child: IconButton(
              onPressed: () {},
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
