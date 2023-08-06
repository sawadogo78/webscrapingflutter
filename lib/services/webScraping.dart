import 'dart:convert';

import 'package:flutterwebscraping/models/models.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as htmlParser;

class IndeedJobsService {
  final _url = "https://ca.indeed.com/jobs?q=alithya&l=montr%C3%A9al&vjk";

  Future<List<JobsIndeed>> fetchIndeed() async {
    http.Response response = await http.get(Uri.parse(_url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print('done');
      dom.Document html = htmlParser.parse(data);
      final jobstitles = html.getElementsByClassName("css-1m4cuuf e37uo190");
      final locations = html.getElementsByClassName('companyLocation');
      final List<JobsIndeed> indeedJobs = [];
      for (int i = 0; i < jobstitles.length; i++) {
        String jobtitle = jobstitles[i].text.trim();
        String companyName = "Alithya";
        String location = locations[i].text.trim();
        final JobsIndeed job = JobsIndeed(
            jobtitle: jobtitle, companyName: companyName, location: location);
        indeedJobs.add(job);
      }
      return indeedJobs;
    } else {
      throw Exception("Some probleme occured");
    }
  }
}
