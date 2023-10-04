import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        children: <Widget>[
          // Top Section: Load Food Illustration from the Web
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Image.network(
                  'https://example.com/your_image_url.jpg', // Replace with your image URL
                  width: 200.0, // Adjust the width as needed
                  height: 200.0, // Adjust the height as needed
                  fit: BoxFit.contain, // Adjust the fit as needed
                ),
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
                        // A photo was taken, you can use the pickedFile.path to access the image file
                        print('Image path: ${pickedFile.path}');
                      } else {
                        // User canceled or didn't take a photo
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
                        // An image was selected from the gallery, you can use the pickedFile.path to access the image file
                        print('Image path: ${pickedFile.path}');
                      } else {
                        // User canceled the gallery picker
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
