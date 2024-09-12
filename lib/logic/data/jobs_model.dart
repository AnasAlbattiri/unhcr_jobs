class JobsModel {
  final String jobId;
  final String title;
  final String company;
  final String location;
  final String description;
  final String longDescription;
  final String salary;
  final String datePosted;
  final String imageUrl;

  JobsModel({
    required this.jobId,
    required this.title,
    required this.company,
    required this.location,
    required this.description,
    required this.longDescription,
    required this.salary,
    required this.datePosted,
    required this.imageUrl,
  });

  // Manual fromJson method
  factory JobsModel.fromJson(Map<String, dynamic> json) {
    return JobsModel(
      jobId: json['job_id'] ?? '',
      title: json['title'] ?? '',
      company: json['company'] ?? '',
      location: json['location'] ?? '',
      description: json['description'] ?? '',
      longDescription: json['long_description'] ?? '',
      salary: json['salary'] ?? '',
      datePosted: json['date_posted'] ?? '',
      imageUrl: json['image_url'] ?? '',
    );
  }

  // Manual toJson method
  Map<String, dynamic> toJson() {
    return {
      'job_id': jobId,
      'title': title,
      'company': company,
      'location': location,
      'description': description,
      'long_description': longDescription,
      'salary': salary,
      'date_posted': datePosted,
      'image_url': imageUrl,
    };
  }
}
