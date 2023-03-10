import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:findmetezt/constants/constant.dart';

class LiveSreaming extends StatelessWidget {
  const LiveSreaming({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.peter1),
        Positioned(
            top: 20,
            left: 20,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.redColor,
                  radius: 5,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "LIVE",
                  style: GoogleFonts.dmSans(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                )
              ],
            )),
        Positioned(
            bottom: 30,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Contiune Wacthing",
                  style: GoogleFonts.dmSans(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Peter Obi's Speech to \nNational Congress",
                      style: GoogleFonts.dmSans(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Live Broadscast",
                  style: GoogleFonts.dmSans(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ],
            )),
        Positioned(
            right: 15,
            bottom: 60,
            child: Icon(
              Icons.play_circle_fill,
              size: 35,
              color: AppColors.whiteColor,
            ))
      ],
    );
  }
}
