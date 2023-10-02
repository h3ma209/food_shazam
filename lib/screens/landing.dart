// landing.dart

import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 150.0,
            
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Welcome to Food Shazam',
                  style: TextStyle(color: Colors.black, fontSize: 38.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0), // Add some spacing between containers
          Container(
            width: double.infinity,
            height: 150.0,
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  textAlign: TextAlign.center,
                  'simply take a picture of your favorite food and we will tell you what it is!',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0), // Add some spacing between containers
          Container(
            width: double.infinity,
            height: 150.0,
            child: Center(
                child: InkWell(
              onTap: () {
                // Handle button tap here
                print('Button tapped');
              },
              child: Container(
                width: 80.0, // Adjust the width and height as needed
                height: 80.0,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 35.0,
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
