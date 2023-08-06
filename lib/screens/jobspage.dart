import 'package:flutter/material.dart';
import 'package:flutterwebscraping/providers/provider.dart';
import 'package:provider/provider.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final jobsProvider = Provider.of<IndeedJobsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Indeed job'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              await jobsProvider.fetchIndeedJobs();
            },
            child: Text('Fetch Jobs'),
          ),
          SizedBox(height: 20),
          Expanded(
            child: jobsProvider.jobs.isEmpty
                ? Center(
                    child: Text('No jobs found. Press "Fetch Jobs" to fetch.'))
                : ListView.builder(
                    itemCount: jobsProvider.jobs.length,
                    itemBuilder: (context, index) {
                      final job = jobsProvider.jobs[index];
                      return ListTile(
                        title: Text(job.jobtitle),
                        subtitle: Text(job.companyName),
                        trailing: Text(job.location),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
