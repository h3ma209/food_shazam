import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? imagePath; // Store the path of the selected image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        children: <Widget>[
          // Top Section: Load Food Illustration from the Web or Display Selected Image
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              child: Center(
                child: imagePath != null
                    ? Image.file(File(imagePath!!)) // Show the selected image
                    : Text("Top Section"),
              ),
            ),
          ),

          // Middle Section: Buttons to Open Camera and Gallery
          Expanded(
            flex: 1,
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      final picker = ImagePicker();
                      final pickedFile =
                          await picker.pickImage(source: ImageSource.camera);

                      if (pickedFile != null) {
                        setState(() {
                          imagePath = pickedFile.path;
                        });
                      } else {
                        print('No image selected.');
                      }
                    },
                    child: Text('Open Camera'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final picker = ImagePicker();

                      final pickedFile =
                          await picker.pickImage(source: ImageSource.gallery);

                      if (pickedFile != null) {
                        setState(() {
                          imagePath = pickedFile.path;
                        });
                      } else {
                        print('No image selected.');
                      }
                    },
                    child: Text('Open Gallery'),
                  ),
                ],
              ),
            ),
          ),

          // Bottom Section: Text
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey,
              child: Center(
                child: Text(
                  'Some text here',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
