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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: wColor,
      appBar: appBar(context),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInDown(
                duration: const Duration(milliseconds: 500),
                child: SizedBox(
                  width: double.infinity,
                  child: JobDetailsCard(
                    jobsModel: jobsModel,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              SlideInLeft(
                duration: const Duration(milliseconds: 500),
                child: defaultText(
                  text: 'Job Description',
                  color: bColor,
                  fontSize: screenWidth * 0.045,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Expanded(
                child: SingleChildScrollView(
                  child: FadeInUp(
                    duration: const Duration(milliseconds: 500),
                    child: Text(
                      jobsModel.longDescription,
                      style: TextStyle(
                        fontFamily: 'Circular',
                        fontSize: screenWidth * 0.035,
                        color: Colors.grey[600]!,
                      ),
                    ),
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
