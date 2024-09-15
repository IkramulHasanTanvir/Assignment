import 'package:crud_app/screens/add_product_screen.dart';
import 'package:crud_app/screens/product_list_screen.dart';
import 'package:crud_app/screens/update_product_screen.dart';
import 'package:crud_app/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int _currentIndex = 0;
  final List<Widget> screens = [
    const ProductListScreen(),
    const AddProductScreen(),
  ];

  void _navBarTapped(int index) {
    _currentIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavBar(
        onTabChange: _navBarTapped,
      ),
    );
  }
}
