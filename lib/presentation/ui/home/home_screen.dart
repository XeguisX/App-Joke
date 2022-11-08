import 'package:app_joke/presentation/ui/home/home_body.dart';
import 'package:app_joke/presentation/ui/home/home_footer.dart';
import 'package:app_joke/presentation/ui/home/home_header.dart';
import 'package:app_joke/presentation/ui/joke/joke_list.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static final List<Widget> _widgetOptions = <Widget>[
    SafeArea(
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          SizedBox(height: 16),
          HomeHeader(),
          HomeBody(),
        ],
      ),
    ),
    const JokeList(),
    const Text(
      'Search',
      style: optionStyle,
    ),
    const Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: HomeFooter(
        selectedIndex: _selectedIndex,
        onTabChange: onTabChange,
      ),
    );
  }
}
