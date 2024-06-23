import 'package:flutter/material.dart';
import 'package:slash/widgets/categories.dart';
import 'package:slash/widgets/custom_app_bar.dart';
import 'package:slash/widgets/image_slider.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double scalingFactor = screenWidth / 600;

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          SizedBox(height: 30.0 * scalingFactor,),
          const ImageSlider(
            imageUrls: [
              'assets/images/Hot Deal 1.png',
              'assets/images/Hot Deal 1.png'
            ],
          ),
          SizedBox(height: 24.0 * scalingFactor,),
          const CategoriesSection(
            categories: [
              {'icon': 'shirt-icon.png', 'label': 'Fashion'},
              {'icon': 'dice-icon.png', 'label': 'Games'},
              {'icon': 'glasses-icon.png', 'label': 'Accessories'},
              {'icon': 'book-icon.png', 'label': 'Books'},
              {'icon': 'palette-icon.png', 'label': 'Art'},
            ]
          ),
          
        ],
      )
    );
  }
}