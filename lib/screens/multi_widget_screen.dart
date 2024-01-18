import 'package:flutter/material.dart';
import 'package:forms_fa/widgets/multi_widget_form.dart';

class MultiWidgetScreen extends StatelessWidget {
  const MultiWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multi Widget Form"),
        backgroundColor: const Color.fromARGB(255, 201, 149, 8),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: MultiWidgetForm(),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Multi Widget Form',
    theme: ThemeData(
        primarySwatch: Colors.red,
        hintColor: const Color.fromARGB(255, 68, 255, 124),
        fontFamily: 'Proxima Nova'),
    home: const MultiWidgetScreen(),
  ));
}
