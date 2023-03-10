import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:findmetezt/constants/app_color.dart';

class ActivityCard extends StatelessWidget {
  final String title;
  final int quility;
  final Widget leading;
  const ActivityCard({
    super.key,
    required this.title,
    required this.quility,
    required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              leading,
              const SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(child: Container()),
              Row(
                children: [
                  Text(
                    quility.toString(),
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2.6,
            endIndent: 5,
            indent: 40,
          )
        ],
      ),
    );
  }
}

List<podCast> podCasts = [
  podCast("Audiocast", "501 audio",
      Icon(Icons.library_music_rounded, color: Colors.blueGrey.shade900)),
  podCast("Images", "501 images",
      Icon(Icons.image, color: Colors.blueGrey.shade900)),
  podCast("Video", "501 video",
      Icon(Icons.video_camera_front_outlined, color: Colors.blueGrey.shade900)),
  podCast("Ducument", "501 Doc",
      Icon(Icons.document_scanner_outlined, color: Colors.blueGrey.shade900)),
  podCast("Business", "501 file",
      Icon(Icons.villa_outlined, color: Colors.blueGrey.shade900)),
  podCast("Aurro", "501 file",
      Icon(Icons.library_music_rounded, color: Colors.blueGrey.shade900))
];

class podCast {
  final String title;
  final String subTitle;
  final Widget icon;

  podCast(this.title, this.subTitle, this.icon);
}
