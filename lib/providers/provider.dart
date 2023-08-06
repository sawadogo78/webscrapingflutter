import 'package:flutter/material.dart';
import 'package:flutterwebscraping/models/models.dart';

import 'package:flutterwebscraping/services/webScraping.dart';

class IndeedJobsProvider with ChangeNotifier {
  final IndeedJobsService _indeedService = IndeedJobsService();
  List<JobsIndeed> _indeedJobs = [];

  List<JobsIndeed> get jobs => _indeedJobs;
  Future<void> fetchIndeedJobs() async {
    try {
      _indeedJobs = await _indeedService.fetchIndeed();
      notifyListeners();
    } catch (e) {
      throw Exception("Error fetching jobs: $e");
    }
  }
}
