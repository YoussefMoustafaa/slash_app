import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  final List<String> imageUrls;

  const ImageSlider({super.key, required this.imageUrls});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scalingFactor = screenWidth / 600;

    return Column(
      children: [
        Container(
          height: 200 * scalingFactor,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.imageUrls.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0 * scalingFactor),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0 * scalingFactor),
                  child: Image.asset(
                    widget.imageUrls[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 8.0 * scalingFactor,),
        SmoothPageIndicator(
          controller: _pageController, 
          count: widget.imageUrls.length,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.black,
            dotColor: Colors.grey,
            dotHeight: 8 * scalingFactor,
            dotWidth: 8 * scalingFactor,
            spacing: 4 * scalingFactor,
          ),
        )
      ],
    );
  }
}