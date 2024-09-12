import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/reusable.dart';

class RecentJobsText extends StatelessWidget {
  const RecentJobsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        defaultText(
          text: 'Recent Jobs',
          color: bColor,
          fontSize: 18,
        ),
        const Spacer(),
        defaultText(
          text: 'See All',
          color: mainColor,
          fontSize: 14,
        ),
      ],
    );
  }
}
