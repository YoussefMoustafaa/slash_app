import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {

  final List<Map<String, String>> categories;

  const CategoriesSection({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scalingFactor = screenWidth / 600;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0 * scalingFactor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader('Categories', scalingFactor),
          SizedBox(height: 16.0 * scalingFactor),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories.map((category) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0 * scalingFactor),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xff292929),
                        radius: 50 * scalingFactor,
                        child: Image.asset(
                          'assets/images/${category['icon']}',
                          width: 70 * scalingFactor,
                          height: 70 * scalingFactor,
                        ),
                      ),
                      SizedBox(height: 4.0 * scalingFactor,),
                      Text(category['label']!)
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


  
  Widget _buildHeader(String title, double scalingFactor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 22 * scalingFactor, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              'See All',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16 * scalingFactor
              )
            ),
            SizedBox(width: 4.0 * scalingFactor,),
            Icon(Icons.arrow_forward_ios, size: 16 * scalingFactor, color: Colors.black,),
          ],
        )
      ],
    );
  }




}