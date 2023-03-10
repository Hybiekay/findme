import 'package:flutter/material.dart';
import 'package:findmetezt/widgets/widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Activity extends StatelessWidget {
  const Activity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          "Activity",
          style: GoogleFonts.dmSans(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const ActivityCard(
        title: "Booking",
        quility: 6,
        leading: Icon(Icons.book),
      ),
      const ActivityCard(
        title: "Shared",
        quility: 6,
        leading: Icon(Icons.add_shopping_cart_outlined),
      ),
      const ActivityCard(
        title: "History",
        quility: 0,
        leading: Icon(Icons.book),
      )
    ]);
  }
}
