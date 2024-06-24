import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            height: screenHeight * 0.055,
            margin: EdgeInsets.only(top: screenWidth * 0.04, left: screenWidth * 0.04, bottom: screenWidth * 0.04, right: screenWidth * 0.02),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(228, 228, 228, 0.52),
              borderRadius: BorderRadius.circular(screenWidth * 0.02),
            ),
            child: TextFormField(
                decoration: InputDecoration(
              hintText: 'Search here..',
              prefixIcon: Icon(
                Icons.search,
                color: const Color.fromRGBO(95, 95, 95, 1),
                size: screenWidth * 0.05,
              ),
              border: InputBorder.none, // No border for the TextFormField
              focusedBorder: InputBorder.none, // No border when focused
              enabledBorder: InputBorder.none,
            )),
          ),
        ),
        // Add spacing between TextFormField and Icon
        Container(
          margin: EdgeInsets.only(top: screenWidth * 0.04, right: screenWidth * 0.04, bottom: screenWidth * 0.04),
          height: screenHeight * 0.055,
          width: screenWidth * 0.1,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(228, 228, 228, 0.52),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.015),
            child: Icon(
              Icons.settings,
              color: const Color.fromRGBO(95, 95, 95, 1), // Color of the icon
              size: screenWidth * 0.05, // Size of the icon
            ),
          ),
        ),
      ],
    );
  }
}
