import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';


class SearchSection extends StatefulWidget {
  const SearchSection({
    super.key,
  });

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  String text = "Press the button and start speaking";
  bool isListening = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: false,
      onChanged: (newValue) {
        // Removed functionality
      },
      cursorColor: Colors.black,
      keyboardType: TextInputType.text,
      style: const TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        hintText: 'Search for a job or company',
        labelStyle: const TextStyle(color: Colors.grey),
        fillColor: Colors.white,
        suffixIcon: InkWell(
          enableFeedback: true,
          onTap: () {
            // Removed functionality
          },
          child: const Icon(
            Icons.mic,
            color: mainColor,
          ),
        ),
        prefixIcon: const Icon(
          Icons.search,
        ),
        hintStyle: const TextStyle(
          fontSize: 16,
          color: Colors.grey,
        ),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[200]!,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFF1F222A),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
