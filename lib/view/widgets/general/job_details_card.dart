import 'package:flutter/material.dart';

import '../../../logic/data/jobs_model.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/reusable.dart';

class JobDetailsCard extends StatelessWidget {
  const JobDetailsCard({
    super.key, required this.jobsModel,
  });

  final JobsModel jobsModel;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: wColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey[200]!,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: wColor,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: Colors.grey[200]!,
                  width: 1,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.network(
                  jobsModel.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            defaultText(
              text: jobsModel.title,
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 8,
            ),
            defaultText(
              text: jobsModel.company,
              color: Colors.grey[600]!,
              fontSize: 14,
            ),
            const SizedBox(
              height: 8,
            ),
            defaultText(
              text: 'Job id: ${jobsModel.jobId}',
              color: Colors.grey[600]!,
              fontSize: 13,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              '${jobsModel.description}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Circular',
                fontSize: 12,
                color: Colors.grey[600]!,
              ),
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
                  defaultText(
                    text: jobsModel.location,
                    color: Colors.grey[600]!,
                    fontSize: 15,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  defaultText(
                    text: jobsModel.datePosted,
                    color: Colors.grey[600]!,
                    fontSize: 15,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  defaultText(
                    text: jobsModel.salary,
                    color: mainColor,
                    fontSize: 15,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 20,
                  decoration: BoxDecoration(
                    color: wColor,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey[500]!,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: defaultText(
                      text: 'Full Time',
                      color: Colors.grey[600]!,
                      fontSize: 9,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 40,
                  height: 20,
                  decoration: BoxDecoration(
                    color: wColor,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey[500]!,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: defaultText(
                      text: 'Onsite',
                      color: Colors.grey[600]!,
                      fontSize: 9,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
