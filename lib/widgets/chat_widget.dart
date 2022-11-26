import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
      child: ListTile(
        tileColor: Theme.of(context).primaryColor.withOpacity(0.05),
        leading: Image.asset(
          'assets/images/user_avatar.jpg',
        ),
        minVerticalPadding: 10,
        title: Text(
          'John Wood',
          style: GoogleFonts.abel().copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        subtitle: Text(
          'Okay, i will talk to you about this!',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: GoogleFonts.abel(),
        ),
        trailing: Text(
          '08:30 PM',
          style: GoogleFonts.abel().copyWith(
            color: Theme.of(context).primaryColor.withOpacity(0.5),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
