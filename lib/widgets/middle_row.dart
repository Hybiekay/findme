import 'package:flutter/material.dart';
import 'package:findmetezt/widgets/widget.dart';

class MiddleRow extends StatelessWidget {
  const MiddleRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: podCasts.length.toDouble() ~/ 2,
          itemBuilder: (context, index) {
            int a = 2 * index;

            int b = 2 * index + 1;
            return Column(
              children: [
                boxCard(
                    title: podCasts[a].title,
                    subTitle: podCasts[a].subTitle,
                    icon: podCasts[a].icon),
                boxCard(
                    title: podCasts[b].title,
                    subTitle: podCasts[b].subTitle,
                    icon: podCasts[b].icon),
              ],
            );
          }),
    );
  }
}
