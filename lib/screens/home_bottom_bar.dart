import 'package:flutter/material.dart';
import 'package:property_app_ui/screens/chat_screen.dart';
import 'package:property_app_ui/screens/fav_screen.dart';
import 'package:property_app_ui/screens/home_screen.dart';
import 'package:property_app_ui/screens/setting_screen.dart';

import '../utils/app_constants.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({Key? key}) : super(key: key);

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  final Map<IconData, Widget> _screens = {
    Icons.home_filled: HomeScreen(),
    Icons.favorite: const FavScreen(),
    Icons.chat_bubble: const ChatScreen(),
    Icons.settings: const SettingScreen(),
  };

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.values.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: _screens.entries
            .map(
              (e) => BottomNavigationBarItem(
                icon: Icon(
                  e.key,
                  color: AppAssets.primaryColor.withOpacity(0.3),
                ),
                label: '',
                activeIcon: Icon(
                  e.key,
                  color: Theme.of(context).primaryColor,
                ),
                backgroundColor: Colors.white,
              ),
            )
            .toList(),
      ),
    );
  }
}
