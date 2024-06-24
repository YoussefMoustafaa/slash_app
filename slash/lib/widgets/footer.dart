import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildFooterItem(
            icon: Icons.home,
            label: 'Home',
          ),
          SizedBox(width: screenWidth * 0.01),
          _buildFooterItem(
            icon: Icons.favorite,
            label: 'Favorites',
          ),
          SizedBox(width: screenWidth * 0.01),
          _buildFooterItem(
            icon: Icons.shopping_cart,
            label: 'My Cart',
          ),
          SizedBox(width: screenWidth * 0.01),
          _buildFooterItem(
            icon: Icons.account_circle,
            label: 'My Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildFooterItem({
    required IconData icon,
    required String label,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
          color: const Color.fromRGBO(41, 41, 41, 1),
        ),
        Text(
          label,
          style: const TextStyle(color: Color.fromRGBO(41, 41, 41, 1)),
        ),
      ],
    );
  }
}
