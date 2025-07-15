import 'package:flutter/material.dart';
import 'FSignup.dart';
import 'FLogin.dart';

class FScreen1 extends StatefulWidget {
  const FScreen1({super.key});

  @override
  State<FScreen1> createState() => _FScreen1State();
}

class _FScreen1State extends State<FScreen1> {
  bool isChecked = false; // Checkbox state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          "Welcome Back",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Checkbox with Agree & Continue
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                const Text(
                  "Agree & Continue",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Already Have an Account (Login)
            InkWell(
              onTap: isChecked
                  ? () {
                // Navigate to FLogin screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FLogin()),
                );
              }
                  : null, // Disable tap when not checked
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: isChecked ? Colors.blue : Colors.grey, // Change color
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Already Have an Account",
                    style: TextStyle(
                      color: isChecked ? Colors.white : Colors.black45,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Create an Account
            InkWell(
              onTap: isChecked
                  ? () {
                // Navigate to FSignup screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FSignup()),
                );
              }
                  : null, // Disable tap when not checked
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: isChecked ? Colors.green : Colors.grey, // Change color
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Create an Account",
                    style: TextStyle(
                      color: isChecked ? Colors.white : Colors.black45,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
