import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabTapped;

  const MyBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTabTapped,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/menu.png',
              width: 25,
              height: 25,
            ),
            label: 'Home',
            backgroundColor: const Color(0xFF006064),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/bottom_scanner.png',
              width: 25,
              height: 25,
            ),
            label: 'Scan',
            backgroundColor: const Color(0xFF006064),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/pick.png',
              width: 25,
              height: 25,
            ),
            label: 'Pick',
            backgroundColor: const Color(0xFF006064),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/history.png',
              width: 25,
              height: 25,
            ),
            label: 'History',
            backgroundColor: const Color(0xFF006064),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profile.png',
              width: 25,
              height: 25,
            ),
            label: 'Profile',
            backgroundColor: const Color(0xFF006064),
          )
        ],
        currentIndex: selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 248, 249, 249),
        onTap: onTabTapped,
      ),
    );
  }
}
