import '../constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class boxCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget icon;
  const boxCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 135,
      width: 145,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.whiteColor,
          ),
          gradient: LinearGradient(
            colors: [
              AppColors.redColor.withOpacity(.1),
              Colors.green.withOpacity(.1),
              Colors.grey.shade50
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            // stops: []
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            Text(
              title,
              style: GoogleFonts.dmSans(
                color: const Color.fromARGB(255, 41, 8, 81),
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            Text(
              subTitle,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w300,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
