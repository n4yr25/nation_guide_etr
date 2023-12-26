import 'package:flutter/material.dart';
import 'package:nation_guide_etr/components/flagtile.dart';
import 'package:nation_guide_etr/screens/game.dart';
import 'package:nation_guide_etr/screens/home_screen.dart';
import 'package:nation_guide_etr/screens/profile.dart';

class NavDrawer extends StatefulWidget {
  NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  int selectedIndex = 1;
  List<Widget> widgetScreens = [
    GameScreen(),
    HomeScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem( 
              icon: Icon(Icons.gamepad),
              label: 'Game',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.indigo,
          showUnselectedLabels: false,
          onTap: _onItemTapped,
          iconSize: 35,
        ),
    );
  }
}
