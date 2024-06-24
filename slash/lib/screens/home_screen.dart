import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:slash/widgets/categories.dart';
import 'package:slash/widgets/custom_app_bar.dart';
import 'package:slash/widgets/footer.dart';
import 'package:slash/widgets/image_slider.dart';
import 'package:slash/models/item.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:slash/widgets/items_collection.dart';
import 'package:slash/widgets/search.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  Future<Data> loadData() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    return Data.fromJson(data);
  }


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.01,),
            const Search(),
            const ImageSlider(
              imageUrls: [
                'assets/images/Hot Deal 1.png',
                'assets/images/Hot Deal 1.png'
              ],
            ),
            SizedBox(height: screenHeight * 0.025,),
            const CategoriesSection(
              categories: [
                {'icon': 'shirt-icon.png', 'label': 'Fashion'},
                {'icon': 'dice-icon.png', 'label': 'Games'},
                {'icon': 'glasses-icon.png', 'label': 'Accessories'},
                {'icon': 'book-icon.png', 'label': 'Books'},
                {'icon': 'palette-icon.png', 'label': 'Art'},
              ]
            ),
            SizedBox(height: screenHeight * 0.025,),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: FutureBuilder<Data>(
                future: loadData(),
                builder:(context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'),);
                  } else if (!snapshot.hasData) {
                    return const Center(child: Text('No data found'));
                  } else {
                    final data = snapshot.data!;
                    return Column(
                      children: [
                        ItemsCollection(
                          title: 'Best Selling',
                          items: data.bestSelling
                        ),
                        SizedBox(height: screenHeight * 0.035,),
                        ItemsCollection(
                          title: 'New Arrival',
                          items: data.newArrival
                        ),
                        SizedBox(height: screenHeight * 0.035,),
                        ItemsCollection(
                          title: 'Recommended For You',
                          items: data.recommendedForYou
                        ),
                        SizedBox(height: screenHeight * 0.035,),
                      ],
                    );
                  }
                },
              ),
            ),
            const Footer(),
          ],
        ),
      )
    );
  }
}