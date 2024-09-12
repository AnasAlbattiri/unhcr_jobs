import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unhcr_jobs/view/screens/jobs_screen.dart';
import '../../../utils/app_colors.dart';

class WelcomeButtonsSection extends StatelessWidget {
  const WelcomeButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 70.0,
        ),
        Container(
          width: 300,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            shadows: const [
              BoxShadow(
                color: mainColor,
                blurRadius: 12,
                offset: Offset(4, 4),
                spreadRadius: 0,
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {
              Get.offAll(() => const JobsScreen());
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: const Text(
              "Let's get start",
              maxLines: 2,
              style: TextStyle(
                color: wColor,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}