import 'package:flutter/material.dart';
import 'package:forms_fa/widgets/radio_input.dart';

class RadioInputScreen extends StatelessWidget {
  const RadioInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Captivating Radio Input Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Select Your Preference',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const RadioInput(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle the selected radio option
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
