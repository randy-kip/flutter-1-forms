import 'package:flutter/material.dart';
import 'package:forms_fa/widgets/multi_widget_form.dart';

class MultiWidgetScreen extends StatelessWidget {
  const MultiWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Widget Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Colors.orangeAccent,
        fontFamily: 'Roboto', // Customize the font as needed
        // Add more theme configurations as per your preference
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Multi Widget Form'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: MultiWidgetForm(),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MultiWidgetScreen());
}
