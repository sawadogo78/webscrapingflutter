class Job {
  final String companyName;
  final String jobTitle;
  final String description;
  final String jobLocation;
  final String contractType;
  final double? salary;
  final String? clientReference;
  final String? clientEmail;

  Job({
    required this.companyName,
    required this.jobTitle,
    required this.description,
    required this.jobLocation,
    required this.contractType,
    this.salary,
    this.clientReference,
    this.clientEmail,
  });
  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      companyName: json['companName'],
      jobTitle: json['jobTitle'],
      description: json['description'],
      jobLocation: json['jobLocation'],
      contractType: json['contractType'],
      salary: json['salary'] ?? 'Client has not provided salary information',
      clientReference: json['clientReference'] ??
          'Client reference not included in the job description',
      clientEmail:
          json['clientEmail'] ?? 'Client has not provided his email address',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'companyName': companyName,
      'jobTitle': jobTitle,
      'description': description,
      'jobLocation': jobLocation,
      'contractType': contractType,
      'salary': salary,
      'clientReference': clientReference,
      'clientEmail': clientEmail,
    };
  }
}

class JobsIndeed {
  final String jobtitle;
  final String companyName;
  final String location;

  JobsIndeed({
    required this.jobtitle,
    required this.companyName,
    required this.location,
  });

  factory JobsIndeed.fromJson(Map<String, dynamic> json) {
    return JobsIndeed(
      jobtitle: json['jobtitle'],
      companyName: json['companyName'],
      location: json['location'],
    );
  }
}
