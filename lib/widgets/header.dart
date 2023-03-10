import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Row(
        children: [
          Text(
            "Saved",
            style: GoogleFonts.dmSans(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          Expanded(child: Container()),
          Row(
            children: const [
              Icon(
                Icons.search,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.settings,
                size: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
