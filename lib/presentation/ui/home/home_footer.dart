import 'package:app_joke/presentation/ui/home/home_screen.dart';
import 'package:app_joke/presentation/ui/joke/joke_list.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({
    super.key,
    required this.selectedIndex,
    required this.onTabChange,
  });

  final int selectedIndex;
  final Function(int index) onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GNav(
        rippleColor: Colors.grey[300]!,
        hoverColor: Colors.grey[100]!,
        gap: 8,
        activeColor: Colors.black,
        iconSize: 24,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: const Duration(milliseconds: 400),
        tabBackgroundColor: Colors.grey[100]!,
        color: Colors.black,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.favorite,
            text: 'Favorites',
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ],
        selectedIndex: selectedIndex,
        onTabChange: onTabChange,
      ),
    );
  }
}
