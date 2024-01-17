import 'package:flutter/material.dart';
import 'package:forms_fa/widgets/validating_form.dart';

class PurpleHazeScreen extends StatelessWidget {
  const PurpleHazeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purple Haze Screen'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.deepPurple],
          ),
        ),
        child: const Center(
          child: ValidatingForm(), // Assuming ValidatingForm is the desired widget
        ),
      ),
    );
  }
}
