import 'package:get/get.dart';

import '../data/jobs_model.dart';
import '../data/jobs_service.dart';

class JobsController extends GetxController {
  var isLoading = true.obs;
  var jobs = <JobsModel>[].obs;

  JobsController() {
    fetchJobs();
  }

  Future<void> fetchJobs() async {
    isLoading(true);
    try {
      var fetchedJobs = await JobsService.fetchJobs();
      if (fetchedJobs.isNotEmpty) {
        jobs.value = fetchedJobs; // Assign the list of jobs
      } else {
        print('No jobs found');
      }
    } catch (e) {
      print('Failed to load jobs: $e');
    } finally {
      isLoading(false);
    }
  }
}
