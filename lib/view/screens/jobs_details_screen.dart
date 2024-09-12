import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:unhcr_jobs/logic/data/jobs_model.dart';
import 'package:unhcr_jobs/utils/app_colors.dart';
import '../../utils/reusable.dart';
import '../widgets/general/job_details_card.dart';

class JobsDetailsScreen extends StatelessWidget {
  const JobsDetailsScreen({super.key, required this.jobsModel});

  final JobsModel jobsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wColor,
      appBar: appBar(context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInDown(
                duration: const Duration(milliseconds: 500),
                child: JobDetailsCard(
                  jobsModel: jobsModel,
                ),
              ),
              const SizedBox(height: 20),
              SlideInLeft(
                duration: const Duration(milliseconds: 500),
                child: defaultText(
                  text: 'Job Description',
                  color: bColor,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              FadeInUp(
                duration: const Duration(milliseconds: 500),
                child: Text(
                  jobsModel.longDescription,
                  style: TextStyle(
                    fontFamily: 'Circular',
                    fontSize: 12,
                    color: Colors.grey[600]!,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
