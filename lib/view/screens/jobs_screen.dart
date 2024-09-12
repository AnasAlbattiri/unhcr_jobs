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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                BounceInDown(
                  child: const HeaderSection(),
                ),
                const SizedBox(height: 40),
                SlideInLeft(
                  child: const SearchSection(),
                ),
                const SizedBox(height: 20),
                FadeInUp(
                  child: const SliderSection(),
                ),
                const SizedBox(height: 16),
                SlideInRight(
                  child: const RecommendationSection(),
                ),
                const SizedBox(height: 30),
                SlideInUp(
                  child: const RecentJobsSection(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
