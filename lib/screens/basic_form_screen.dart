import 'package:flutter/material.dart';
import 'package:forms_fa/widgets/basic_form.dart';

class BasicFormScreen extends StatelessWidget {
  const BasicFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Form Screen'),
        backgroundColor: const Color.fromARGB(255, 81, 84, 243),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome to the Basic Form Screen!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            BasicForm(), // Import and use the BasicForm widget directly
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: BasicFormScreen(),
  ));
}
