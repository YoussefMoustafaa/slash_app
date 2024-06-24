import 'package:flutter/material.dart';
import 'package:slash/widgets/section_header.dart';

class CategoriesSection extends StatelessWidget {

  final List<Map<String, String>> categories;

  const CategoriesSection({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(title: 'Categories'),
          SizedBox(height: screenHeight * 0.015),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories.map((category) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.012),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xff292929),
                        radius: screenWidth * 0.09,
                        child: Image.asset(
                          'assets/images/${category['icon']}',
                          width: screenWidth * 0.1,
                          height: screenHeight * 0.1,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.012,),
                      Text(
                        category['label']!,
                        style: TextStyle(fontSize: screenWidth * 0.035, fontFamily: 'Urbanist'),
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),  
    );
  }

}