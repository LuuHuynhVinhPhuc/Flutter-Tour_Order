import 'package:curved_navigation_bar_with_label/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/screens/home_page.dart';
import 'package:travelapp/screens/map_page.dart';

class HomeBottomBar extends StatefulWidget {
  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  int _selectedIndex = 1;
  // Trang mặc định
  final List<Widget> _pages = [
    HomePage(),
    MapPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.brown,
      index: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index; // Cập nhật chỉ mục được chọn
        });
      },
      items: [
        CurvedNavigationBarItem(
            icon: Icon(Icons.person_outlined, size: 30), label: "Người dùng"),
        CurvedNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
              color: Colors.redAccent,
            ),
            label: "Trang chủ"),
        CurvedNavigationBarItem(
            icon: Icon(Icons.location_on_outlined, size: 30), label: "Map"),
      ],
    );
  }
}
