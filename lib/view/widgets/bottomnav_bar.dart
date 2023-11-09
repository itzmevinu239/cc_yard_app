import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GnavBottom extends StatelessWidget {
  const GnavBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: const GNav(
        gap: 8,
        color: Colors.grey,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.orange,
        tabBorderRadius: 10,
        padding: EdgeInsets.all(10),
        tabs: [
          GButton(
            icon: Icons.home_rounded,
            text: 'Home',
          ),
          GButton(
            icon: Icons.supervised_user_circle,
            text: 'Users',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          )
        ],
      ),
    );
  }
}
