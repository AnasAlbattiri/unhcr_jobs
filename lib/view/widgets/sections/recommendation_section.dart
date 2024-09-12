import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:get/get.dart';
import 'package:unhcr_jobs/utils/app_colors.dart';
import '../../../logic/controller/jobs_controller.dart';
import '../../screens/jobs_details_screen.dart';
import '../general/job_card.dart';
import '../general/recommendation_text.dart';

class RecommendationSection extends StatelessWidget {
  const RecommendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final JobsController jobsController = Get.find();

    return Column(
      children: [
        const RecommendationText(),
        const SizedBox(height: 20),
        SizedBox(
          height: 235,
          child: Obx(() {
            if (jobsController.isLoading.value) {
              return Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: Colors.grey[200]!,
                              width: 1,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 120,
                                height: 15,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 8),
                              Container(
                                width: 100,
                                height: 15,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 8),
                              Container(
                                width: 140,
                                height: 15,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Divider(
                      color: Colors.grey[200],
                      thickness: 0.6,
                      height: 1,
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 15,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 80,
                            height: 15,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 120,
                            height: 15,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 6),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 20,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 40,
                          height: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }

            if (jobsController.jobs.isEmpty) {
              return const Center(
                child: Text('No job recommendations available.'),
              );
            }

            // Display the job recommendations
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: jobsController.jobs.length,
              itemBuilder: (context, index) {
                final job = jobsController.jobs[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => JobsDetailsScreen(
                            jobsModel: job,
                          ),
                        ),
                      );
                    },
                    child: JobCard(
                      jobsModel: job,
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ],
    );
  }
}
