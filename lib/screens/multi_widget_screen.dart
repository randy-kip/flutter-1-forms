import 'package:flutter/material.dart';
import 'package:forms_fa/widgets/multi_widget_form.dart';

class MultiWidgetFormScreen extends StatelessWidget {
  const MultiWidgetFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Form Screen'),
        backgroundColor: Colors.deepPurple, // Choose a unique color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/google-forms.png', // Replace with your form icon asset
              height: 100,
              width: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'Fill in the Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Provide the required information below',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            const MultiWidgetForm(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle form submission
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple, // Match the app's color scheme
              ),
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
    home: MultiWidgetFormScreen(),
  ));
}
