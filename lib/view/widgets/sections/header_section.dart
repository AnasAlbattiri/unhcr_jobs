import 'package:flutter/material.dart';
import 'package:unhcr_jobs/utils/app_colors.dart';
import '../../../utils/reusable.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          backgroundColor: mainColor,
          radius: 25,
          backgroundImage: NetworkImage(
              'https://www.corporatephotographylondon.com/wp-content/uploads/2019/11/HKstrategies-1663-1.jpg'),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            defaultText(
              text: 'Good Morning 👋',
              color: Colors.grey,
              fontSize: 14,
            ),
            const SizedBox(
              height: 8,
            ),
            defaultText(
              text: 'Emmanuel Ainsley',
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        const Spacer(),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey[200]!,
              width: 1,
            ),
          ),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: wColor,
            child: Image.asset(
              'assets/images/notifications.png',
              height: 18,
              width: 18,
            ),
          ),
        )
      ],
    );
  }
}
