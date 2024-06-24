import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash/models/item.dart';
import 'package:slash/widgets/section_header.dart';

class ItemsCollection extends StatelessWidget {

  final String title;
  final List<Item> items;

  const ItemsCollection({
    super.key,
    required this.title,
    required this.items
  });


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: title),
        SizedBox(height: screenHeight * 0.01),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items.map((item) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(screenWidth * 0.05),
                          child: Image.asset(
                            item.imgPath,
                            width: screenWidth * 0.35,
                            height: screenHeight * 0.2,
                          ),
                        ),
                        Positioned(
                          top: screenHeight * 0.032,
                          right: screenWidth * 0.048,
                          child: const Icon(Icons.heart_broken_outlined),
                        )
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      item.name,
                      style: TextStyle(fontSize: screenWidth * 0.038)
                    ),
                    SizedBox(height: screenHeight * 0.008),
                    Row(
                      children: [
                        Text(
                          'EGP ${item.price.toString()}',
                          style: TextStyle(fontSize: screenWidth * 0.038, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: screenWidth * 0.1,),
                        Icon(Icons.add_circle, size: screenWidth * 0.05, color: const Color(0xff292929),)
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}


