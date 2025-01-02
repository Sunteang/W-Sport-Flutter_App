import 'package:flutter/material.dart';
import 'package:homework01/screens/Home/home-screen/HomeScreen.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    // Static Input Values
    final String username = "Serey Sunteang";
    final String dateOfBirth = "01/01/1990";
    final String phoneNumber = "098765";
    final String email = "sereysunteang@gmail.com";

    void navigateToHomeScreen() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SportsHomeScreen()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Serey Sunteang",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "Register",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Username",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(),
                hintText: 'Enter your username',
              ),
              controller: TextEditingController(text: username), // Static value
            ),
            const SizedBox(height: 20),
            const Text(
              "Date of Birth",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.calendar_today),
                border: OutlineInputBorder(),
                hintText: 'Enter your date of birth',
              ),
              controller:
                  TextEditingController(text: dateOfBirth), // Static value
            ),
            const SizedBox(height: 20),
            const Text(
              "Phone Number",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.phone),
                border: OutlineInputBorder(),
                hintText: 'Enter your phone number',
              ),
              controller:
                  TextEditingController(text: phoneNumber), // Static value
            ),
            const SizedBox(height: 20),
            const Text(
              "Email",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(),
                hintText: 'Enter your email',
              ),
              controller: TextEditingController(text: email), // Static value
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: navigateToHomeScreen, // Navigate to Home Screen
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Register",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
