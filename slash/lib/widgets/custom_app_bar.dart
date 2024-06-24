import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.all(screenWidth * 0.01),
          child: Row(
            children: [
              Text(
                'Slash.',
                style: TextStyle(
                fontSize: (screenWidth * 0.05),
                fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              // SizedBox(width: 20 * scalingFactor,),
              Icon(Icons.location_on, color: Colors.black, size: screenWidth * 0.065,),
              SizedBox(width: screenWidth * 0.01,),
              Text(
                'Nasr City\nCairo',
                style: TextStyle(
                  fontSize: (screenWidth * 0.03),
          
                ),
              ),
              Icon(Icons.keyboard_arrow_down, size: screenWidth * 0.08,),
              const Spacer(),
              Stack(
                children: [
                  Icon(Icons.notifications_outlined, size: screenWidth * 0.075,),
                  Positioned(
                    right: screenWidth * 0.013,
                    top: screenHeight * 0.009,
                    child: Container(
                      padding: EdgeInsets.all(screenWidth * 0.001),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(screenWidth * 0.006),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 0.022 * screenWidth,
                        minHeight: 0.012 * screenHeight
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}