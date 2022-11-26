import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildTitleBar(),
            _buildSettingsTab('Themes', Icons.light_mode_outlined, false),
            _buildSettingsTab('Notifications', Icons.notifications, true),
            _buildSettingsTab('Dark Mode', Icons.light_mode_outlined, false),
            _buildSettingsTab('Chats', Icons.light_mode_outlined, false),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleBar() {
    return ListTile(
      leading: Image.asset('assets/images/user_avatar.jpg'),
      title: Text(
        'Settings',
        style: GoogleFonts.abel().copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }

  Widget _buildSettingsTab(String title, IconData iconData, bool value) {
    return StatefulBuilder(builder: (context, setState) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          tileColor: Theme.of(context).primaryColor.withOpacity(0.1),
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).primaryColor.withOpacity(0.1),
            ),
            child: Icon(
              iconData,
              color: Theme.of(context).primaryColor,
            ),
          ),
          title: Text(title),
          trailing: Switch.adaptive(
            value: value,
            activeColor: Theme.of(context).primaryColor,
            onChanged: (valueTo) {
              setState(() {
                value = valueTo;
              });
            },
          ),
        ),
      );
    });
  }
}
