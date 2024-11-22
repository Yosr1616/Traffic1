import 'package:flutter/material.dart';
import 'interface1.dart'; // Import the second page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Example',
      debugShowCheckedModeBanner: false, // Disable the debug banner
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image using local asset
          Positioned.fill(
            child: Image.asset(
              'assets/img1.png', // Replace with your local image path
              fit: BoxFit.cover, // Adjust how the image fits the screen
            ),
          ),
          // Text "MyLights" positioned on the left and higher on the screen
          Positioned(
            top: MediaQuery.of(context).size.height /
                8, // Position a bit higher than before
            left: 20, // Position it towards the left side with padding
            child: Text(
              'MyLights',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set text color to white for visibility
              ),
            ),
          ),
          // Text area positioned at the bottom third of the page
          Positioned(
            bottom: MediaQuery.of(context).size.height /
                3, // Position from the bottom
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(), // Placeholder for any future text content
            ),
          ),
          // Button positioned near the bottom
          Positioned(
            bottom: 50.0, // Adjust button position
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 92, 103, 122), // Button background color
                  foregroundColor: Colors.white, // Button text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        30), // Set the radius for the button's corners
                    side: BorderSide(
                        color: const Color.fromARGB(255, 248, 247, 247),
                        width: 2), // Add border with width
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 80, vertical: 20), // Button padding
                  minimumSize: Size(200, 50), // Minimum width and height
                ),
                onPressed: () {
                  // Navigate to Interface1
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Interface1()),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize
                      .min, // Ensure the Row doesn't take up more space than needed
                  children: [
                    Text(
                      'NEXT',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold), // Make text bold
                    ),
                    SizedBox(width: 16), // Space between the text and the icon
                    // Rectangle around the vector icon
                    Container(
                      padding:
                          EdgeInsets.all(8), // Padding inside the rectangle
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 92, 103,
                            122), // Background color of the rectangle
                        border: Border.all(
                            color: const Color.fromARGB(255, 251, 251, 251),
                            width: 1), // Border color and width
                      ),
                      child: Icon(
                        Icons.arrow_forward, // Icon inside the rectangle
                        size: 20,
                        color: const Color.fromARGB(
                            255, 249, 249, 249), // Icon color
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
