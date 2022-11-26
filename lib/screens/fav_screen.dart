import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/fav_property_widget.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildTitleBar(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: ListView.builder(
                  itemBuilder: (_, index) => const FavPropertyWidget(),
                  itemCount: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleBar() {
    return ListTile(
      leading: Image.asset('assets/images/user_avatar.jpg'),
      title: Text(
        'Favourites',
        style: GoogleFonts.abel().copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }
}
