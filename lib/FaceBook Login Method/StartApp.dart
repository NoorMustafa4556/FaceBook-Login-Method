import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'FScreen1.dart'; // Ensure Screen1.dart is created

class StartApp extends StatefulWidget {
  const StartApp({super.key});

  @override
  State<StartApp> createState() => _StartAppState();
}

class _StartAppState extends State<StartApp> {
  @override
  void initState() {
    super.initState();
    // Navigate to Screen1 after 5 seconds
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FScreen1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Background color for splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Facebook Icon in a Circular Container with color adjustments
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the circle
                shape: BoxShape.circle,
              ),

              child: Icon(
                Icons.facebook,  // Facebook Icon
                size: 80, // Adjust the icon size
                color: Colors.blue, // Set the icon color (blue for Facebook)
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              "Well Come to FaceBook",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const SpinKitWave(
              color: Colors.white, // Wave color
              size: 50.0, // Wave size
            ),
            const SizedBox(height: 20),
            const Text(
              "Loading...",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
