import 'package:flutter/material.dart';
import 'package:hacknow_app/helpers/colors.dart';
import 'package:hacknow_app/helpers/styles.dart';
import 'package:hacknow_app/pages/users/home.dart';
import 'package:hacknow_app/pages/users/profile.dart';
import 'package:hacknow_app/pages/users/search_team.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 1;

  static final List<Widget> _pages = <Widget>[
    SearchTeamPage(),
    const Home(), // الصفحة  الرئيسية بدون ناف بار
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        selectedLabelStyle: TextStyles.font14BoldBlack,
        unselectedLabelStyle: TextStyles.font14BoldBlack,
        selectedItemColor: ColorsManger.primaryColor,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined), label: 'الفرق'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'الحساب'),
        ],
      ),
    );
  }
}
