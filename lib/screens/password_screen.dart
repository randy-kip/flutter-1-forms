import 'package:flutter/material.dart';
import 'package:forms_fa/widgets/password_reset_form.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Reset'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: PasswordResetForm(),
      ),
      backgroundColor: Colors.blueGrey[50], // Set background color
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password Reset App',
      theme: ThemeData(
        primaryColor: Colors.blue, // Set your primary color
        hintColor: Colors.green, // Set your accent color
        // Add more styling as needed
      ),
      home: const PasswordResetScreen(),
    );
  }
}
