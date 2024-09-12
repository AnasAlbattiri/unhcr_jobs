import 'dart:convert';
import 'package:http/http.dart' as http;

import 'jobs_model.dart';

class JobsService {
  static Future<List<JobsModel>> fetchJobs() async {
    var url = Uri.parse('https://www.unhcrjo.org/jobs/api');

    try {
      var response = await http.get(url, headers: {
        'accept': 'application/json',
        'Authorization': 'null',
        'Accept-Language': 'en',
      });

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body) as List; // Cast to List
        List<JobsModel> jobsList = jsonResponse
            .map((job) => JobsModel.fromJson(job))
            .toList(); // Convert each map to JobsModel
        return jobsList;
      } else {
        throw Exception('Failed to load jobs');
      }
    } catch (e) {
      throw Exception('Failed to fetch jobs: $e');
    }
  }
}

