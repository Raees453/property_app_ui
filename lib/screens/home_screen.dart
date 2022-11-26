import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_app_ui/utils/app_constants.dart';

import '../widgets/property_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
            left: 12.0,
            right: 12.0,
            bottom: 12.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileTile(context),
              const SizedBox(height: 10),
              _buildSearchBar(context),
              const SizedBox(height: 20),
              Text(
                'Dream Properties',
                style: GoogleFonts.abel().copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              _buildProperties(),
              const SizedBox(height: 20),
              Text(
                'Nearby Place',
                style: GoogleFonts.abel().copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              _buildProperties(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProperties() {
    return SizedBox(
      height: 310,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => const PropertyWidget(),
        itemCount: 10,
      ),
    );
  }

  Widget _buildProfileTile(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(AppAssets.userAvatar),
      title: Text(
        AppAssets.hii,
        style: GoogleFonts.abel(),
      ),
      subtitle: Text(
        AppAssets.name,
        style: GoogleFonts.abel().copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
      ),
      trailing: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Theme.of(context).primaryColor.withOpacity(0.1),
        ),
        child: IconButton(
          icon: Icon(
            Icons.notifications_none,
            color: Theme.of(context).primaryColor,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).primaryColor,
        width: 0,
      ),
    );
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              focusedBorder: border,
              errorBorder: border,
              enabledBorder: border,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Search your...',
              hintStyle: GoogleFonts.abel().copyWith(
                color: Theme.of(context).primaryColor,
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 40,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 58,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColor,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.filter_alt_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
