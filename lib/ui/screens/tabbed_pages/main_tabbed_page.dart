
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stockx/ui/screens/tabbed_pages/profile.dart';
import 'withdraw.dart';

import 'home.dart';

class MainTabbedPage extends StatefulWidget{
  const MainTabbedPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainTabbedPage();
  }

}

class _MainTabbedPage extends State<MainTabbedPage>{
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    const MyHomePage(title: ""),
    Withdraw(),
    Profile()
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        alignment: AlignmentDirectional.topCenter,
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/home_outline.png'),
                height: 18.0,
              ),
              label: "Home",
              activeIcon: Image(
                  image: AssetImage('assets/images/home_solid.png'),
                height: 18.0,
              )
          ),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/cash_outline.png'),
                height: 18.0,
              ),
              label: "Withdraw",
              activeIcon: Image(
                image: AssetImage('assets/images/cash_solid.png'),
                height: 18.0,
              )
          ),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/profile_outline.png'),
                height: 18.0,
              ),
              label: "Profile",
              activeIcon: Image(
                image: AssetImage('assets/images/profile_solid.png'),
                height: 18.0,
              )
          ),
        ],
      ),
    );
  }

}