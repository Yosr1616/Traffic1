import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img4.png'), // Path to your image
              fit: BoxFit.cover, // Ensure the image covers the whole screen
            ),
          ),
          child: Stack(
            children: [
              // Main content centered
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Center the content vertically
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Center the content horizontally
                    children: [
                      // Header text
                      Text(
                        'Enter your email to reset your password',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 92, 103, 122)),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30), // Space before the email input

                      // Email TextField
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Your Email',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 192, 193, 190),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 40), // Space after the email input

                      // Reset password button
                      ElevatedButton(
                        onPressed: () {
                          // You can add your logic for resetting the password here
                          print("Password reset link sent!");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 92, 103, 122),
                          foregroundColor: Colors.white, // Button color
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          'Reset Password',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Back button in the top-left corner
              Positioned(
                top: 20,
                left: 20,
                child: IconButton(
                  icon: Icon(Icons.arrow_back,
                      color: Colors.white), // Back arrow icon
                  onPressed: () {
                    Navigator.pop(
                        context); // Navigate back to the SignIn screen
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
