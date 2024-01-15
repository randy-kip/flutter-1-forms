import 'package:flutter/material.dart';
import 'package:forms_fa/widgets/emails_input.dart';

class EmailSignInScreen extends StatelessWidget {
  const EmailSignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email Sign In'),
        backgroundColor: Colors.blueAccent, // Choose a color for the app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/locked.png', // Replace with your email icon asset
              height: 100,
              width: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'Enter Your Email',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Sign in with your email address',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            const EmailsInput(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle sign-in button press
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent, // Match the app's color scheme
              ),
              child: const Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: EmailSignInScreen(),
  ));
}
