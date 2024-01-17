import 'package:flutter/material.dart';
import 'package:forms_fa/widgets/text_input.dart';
class ZazzTextInputScreen extends StatelessWidget {
  const ZazzTextInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zazz TextInput Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the Zazz TextInput Screen!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            const TextInput(
              hintText: 'Type something with Zazz!',
              // Add any additional TextInput properties here
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add any functionality you desire
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ZazzTextInputScreen(),
  ));
}
