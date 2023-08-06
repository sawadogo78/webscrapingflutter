import 'package:flutter/material.dart';
import 'package:flutterwebscraping/screens/jobspage.dart';

class Dashboard1 extends StatelessWidget {
  const Dashboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My company Name'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Colors.red,
          ),
        ),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 19,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return SizedBox(
              height: 70,
              width: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.transparent,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Client Name',
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("Number of opening jobs")),
                      ),
                      TextButton.icon(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return JobsPage();
                              },
                            ));
                          },
                          icon: Icon(Icons.remove_red_eye, size: 30),
                          label: Text('View '))
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      )),
    );
  }
}
