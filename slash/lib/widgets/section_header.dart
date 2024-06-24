import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {

  final String title;

  const SectionHeader({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              'See All',
              style: TextStyle(
                color: Colors.black,
                fontSize: screenWidth * 0.035
              )
            ),
            SizedBox(width: screenWidth * 0.0085,),
            Icon(Icons.arrow_forward_ios, size: screenWidth * 0.032, color: Colors.black,),
          ],
        )
      ],
    );
  }
}