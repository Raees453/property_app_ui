import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_app_ui/widgets/chat_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildTitleBar(),
            _buildChats(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleBar() {
    return ListTile(
      leading: Image.asset('assets/images/user_avatar.jpg'),
      title: Text(
        'Chats',
        style: GoogleFonts.abel().copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }

  Widget _buildChats() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (_, index) => const ChatWidget(),
        itemCount: 20,
      ),
    );
  }
}
