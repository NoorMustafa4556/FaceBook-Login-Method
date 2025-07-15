import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FLogin extends StatefulWidget {
  const FLogin({super.key});

  @override
  State<FLogin> createState() => _FLoginState();
}

class _FLoginState extends State<FLogin> {
  final String facebookLink =
      "https://www.facebook.com/NoorMustafa4556"; // Updated link

  // Function to open URL
  Future<void> _openFacebookLink() async {
    final Uri url = Uri.parse(facebookLink);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Could not open the link")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          "Login Here",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Name TextField
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Enter your full name",
                prefixIcon: const Icon(Icons.person, color: Colors.blue), // Icon added
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 1),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Username TextField
            TextField(
              decoration: InputDecoration(
                labelText: "Username",
                hintText: "Enter your username",
                prefixIcon: const Icon(Icons.account_circle, color: Colors.blue), // Icon added
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 1),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Password TextField
            TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                prefixIcon: const Icon(Icons.lock, color: Colors.blue), // Icon added
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 1),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Login Button
            Center(
              child: ElevatedButton(
                onPressed: _openFacebookLink, // Open the link on button press
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
