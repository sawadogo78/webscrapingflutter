import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 50),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.cyan[50],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 150),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  minWidth: 200,
                  textColor: Colors.white,
                  color: Colors.blue[900],
                  elevation: 2,
                  onPressed: () {},
                  child: Text('Login'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  minWidth: 200,
                  textColor: Colors.white,
                  color: Colors.blue[900],
                  elevation: 2,
                  onPressed: () {},
                  child: Text('Create account'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
