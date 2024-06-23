import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scalingFactor = screenWidth / 600;
    return AppBar(
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.all(8.0 * scalingFactor),
          child: Row(
            children: [
              Text(
                'Slash.',
                style: TextStyle(
                fontSize: (24 * scalingFactor),
                fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              // SizedBox(width: 20 * scalingFactor,),
              const Icon(Icons.location_on, color: Colors.black,),
              SizedBox(width: 6 * scalingFactor,),
              Text(
                'Nasr City\nCairo',
                style: TextStyle(
                  fontSize: (20 * scalingFactor),
          
                ),
              ),
              Icon(Icons.keyboard_arrow_down, size: 40 * scalingFactor,),
              const Spacer(),
              Stack(
                children: [
                  Icon(Icons.notifications_outlined, size: 40 * scalingFactor,),
                  Positioned(
                    right: 8 * scalingFactor,
                    top: 8 * scalingFactor,
                    child: Container(
                      padding: EdgeInsets.all(2.0 * scalingFactor),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6 * scalingFactor),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 12 * scalingFactor,
                        minHeight: 12 * scalingFactor
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