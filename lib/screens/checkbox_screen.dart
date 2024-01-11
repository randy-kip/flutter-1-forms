import 'package:flutter/material.dart';
import 'package:forms_fa/widgets/checkbox_form_field.dart';
import 'package:forms_fa/widgets/checkbox_input.dart';

class CheckboxScreen extends StatelessWidget {
  const CheckboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Custom Checkbox Form Field',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            CheckboxFormField(
              title: 'Checkbox Form Field 1',
              initialValue: false,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == false) {
                  return 'Please check this box.';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Standard Checkbox Input',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const CheckboxInput(),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: CheckboxScreen(),
  ));
}
