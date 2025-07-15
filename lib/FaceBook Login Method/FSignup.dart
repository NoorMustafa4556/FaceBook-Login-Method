import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'FLogin.dart';

class FSignup extends StatefulWidget {
  const FSignup({super.key});

  @override
  State<FSignup> createState() => _FSignupState();
}

class _FSignupState extends State<FSignup> {
  String? _selectedGender; // To store selected gender
  DateTime? _selectedDate; // To store selected date
  bool _isLoading = false; // To manage loading state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Sign Up Here",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Welcome Text
            Text(
              "Please enter your details.",
              style: GoogleFonts.aBeeZee(
                textStyle: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Gender Selection
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Gender: ", style: TextStyle(fontSize: 18)),
                Row(
                  children: [
                    Radio(
                      value: "Male",
                      groupValue: _selectedGender,
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = value.toString();
                        });
                      },
                    ),
                    const Text("Male"),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: "Female",
                      groupValue: _selectedGender,
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = value.toString();
                        });
                      },
                    ),
                    const Text("Female"),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: "Other",
                      groupValue: _selectedGender,
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = value.toString();
                        });
                      },
                    ),
                    const Text("Other"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Username and Password Warning
            const Text(
              "Once the username and password have been set, they can't be changed again.",
              style: TextStyle(
                  fontSize: 16, color: Colors.red, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Enter First Name
            TextField(
              decoration: InputDecoration(
                hintText: "Enter First Name",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: const BorderSide(color: Colors.green, width: 3),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Enter Last Name
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Last Name",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: const BorderSide(color: Colors.green, width: 3),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Enter Username
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: const BorderSide(color: Colors.green, width: 3),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Enter Password
            TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                hintText: "Enter Password",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: const BorderSide(color: Colors.green, width: 3),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Date of Birth
            GestureDetector(
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (pickedDate != null) {
                  setState(() {
                    _selectedDate = pickedDate;
                  });
                }
              },
              child: Container(
                padding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  _selectedDate == null
                      ? "Select Date of Birth"
                      : "Date of Birth: ${_selectedDate!.day}-${_selectedDate!.month}-${_selectedDate!.year}",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Signup Button with Progress Indicator
            _isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
              onPressed: () async {
                setState(() {
                  _isLoading = true;
                });
                // Simulate a delay for the progress indicator
                await Future.delayed(const Duration(seconds: 2));
                setState(() {
                  _isLoading = false;
                });
                // Navigate to the FLogin page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FLogin()),
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    "Create an Account",
                    style: TextStyle(
                      color: Colors.white,
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
