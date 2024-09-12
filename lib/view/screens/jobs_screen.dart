import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animate_do/animate_do.dart';
import '../../logic/controller/jobs_controller.dart';
import '../widgets/sections/header_section.dart';
import '../widgets/sections/recent_jobs_section.dart';
import '../widgets/sections/recommendation_section.dart';
import '../widgets/sections/search_section.dart';
import '../widgets/sections/slider_section.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({super.key});

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  final JobsController jobsController = Get.put(JobsController());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BounceInDown(
                  child: const SizedBox(
                    width: double.infinity,
                    child: HeaderSection(),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                SlideInLeft(
                  child: const SizedBox(
                    width: double.infinity,
                    child: SearchSection(),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                FadeInUp(
                  child: const SizedBox(
                    width: double.infinity,
                    child: SliderSection(),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                LayoutBuilder(
                  builder: (context, constraints) {
                    return isPortrait
                        ? SlideInRight(
                      child: const SizedBox(
                        width: double.infinity,
                        child: RecommendationSection(),
                      ),
                    )
                        : SlideInRight(
                      child: SizedBox(
                        width: constraints.maxWidth * 0.8,
                        child: const RecommendationSection(),
                      ),
                    );
                  },
                ),
                SizedBox(height: screenHeight * 0.03),
                SlideInUp(
                  child: const SizedBox(
                    width: double.infinity,
                    child: RecentJobsSection(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
