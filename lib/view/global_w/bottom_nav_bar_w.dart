import 'package:flutter/material.dart';

import '../../constants.dart';

class BottomNavBarW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        fixedColor: kblue,
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.collections_bookmark,
              ),
              label: 'Catalog',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings',
              backgroundColor: Colors.white),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedIconTheme: IconThemeData(color: kblue),
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: Color(0xffe6e6e8)),
        iconSize: 40,
        onTap: (idx) {},
        elevation: 10);
  }
}
