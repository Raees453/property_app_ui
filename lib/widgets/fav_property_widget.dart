import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavPropertyWidget extends StatelessWidget {
  const FavPropertyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 120,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/house_img.jpg',
                fit: BoxFit.cover,
                height: 150,
                width: 100,
              ),
              const SizedBox(width: 10),
              _buildDetailsColumn(context),
              const Spacer(),
              _buildButtonsColumn(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailsColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dream Department',
          style: GoogleFonts.abel().copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Theme.of(context).primaryColor,
              size: 18,
            ),
            Text(
              'Melbourne, Australia',
              style: GoogleFonts.abel(),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: List.generate(
            5,
            (index) => const Icon(
              Icons.star,
              color: Colors.orange,
            ),
          ),
        ),
        const Spacer(),
        RichText(
          text: TextSpan(
            text: '\$1300',
            style: GoogleFonts.abel().copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
              fontSize: 20,
            ),
            children: [
              TextSpan(
                text: '/month',
                style: GoogleFonts.abel().copyWith(
                  fontSize: 15,
                  color: Theme.of(context).primaryColor.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButtonsColumn(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.05),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: IconButton(
            onPressed: () {},
            splashColor: Colors.transparent,
            icon: Icon(
              Icons.more_vert,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.05),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: IconButton(
            onPressed: () {},
            splashColor: Colors.transparent,
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
