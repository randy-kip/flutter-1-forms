import 'package:flutter/material.dart';
import 'package:forms_fa/widgets/switch_input.dart';
class SwitchScreen extends StatelessWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Screen'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Toggle the Switch:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            SwitchInput(), // Import and use the SwitchInput widget
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: SwitchScreen(),
  ));
}
