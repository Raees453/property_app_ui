import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyWidget extends StatelessWidget {
  const PropertyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Theme.of(context).primaryColor.withOpacity(0.05),
      ),
      margin: const EdgeInsets.only(right: 12.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/house_img.jpg',
              height: 230,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Corer Dream House',
                  style: GoogleFonts.abel().copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Text(
                  '5.00',
                  style: GoogleFonts.abel().copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  'Melbourne, Australia',
                  style: GoogleFonts.abel(),
                ),
                const Spacer(),
                const Icon(Icons.attach_money),
                Text(
                  '450/m',
                  style:
                      GoogleFonts.abel().copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
