import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class SearchBar extends StatelessWidget {
  SearchBar({@required this.textController});

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kSearchBarMargins,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: textController,
              decoration: kSearchBarInputDecoration,
            ),
          ),
        ],
      ),
    );
  }
}
