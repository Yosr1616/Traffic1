import 'package:flutter/material.dart';
import 'signin.dart'; // Import the second page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Navigation Example',
      debugShowCheckedModeBanner: false, // Disable the debug banner
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
            top: MediaQuery.of(context).size.height / 8,
            left: 20,
            child: const Text(
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
            bottom: MediaQuery.of(context).size.height / 3,
            left: 0,
            right: 0,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(), // Placeholder for any future text content
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
                    borderRadius: BorderRadius.circular(30), // Button corners
                    side: const BorderSide(
                      color: Color.fromARGB(255, 248, 247, 247),
                      width: 2, // Border width
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 10,
                  ), // Button padding
                  minimumSize: const Size(200, 60), // Minimum size
                ),
                onPressed: () {
                  // Navigate to Interface1
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const signin()),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'NEXT',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Rectangle around the vector icon
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 92, 103, 122),
                        border: Border.all(
                          color: const Color.fromARGB(255, 251, 251, 251),
                          width: 1,
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_forward, // Icon inside the rectangle
                        size: 20,
                        color: Color.fromARGB(255, 249, 249, 249),
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
