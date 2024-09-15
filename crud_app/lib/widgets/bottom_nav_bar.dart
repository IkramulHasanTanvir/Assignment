import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.onTabChange});

  final void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0,top: 8),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey.shade400,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBorderRadius: 24,
        onTabChange: onTabChange,
        tabs: const [
          GButton(
            icon: Icons.view_list,
            text: 'list',
          ),
          GButton(
            icon: Icons.add_circle,
            text: 'add',
          ),
        ],
      ),
    );
  }
}
