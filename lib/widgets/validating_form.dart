// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ValidatingForm extends StatefulWidget {
  const ValidatingForm({super.key});

  @override
  State<StatefulWidget> createState() => _ValidatingFormState();
}

class _ValidatingFormState extends State<ValidatingForm> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.always,
          child: TextFormField(
            initialValue: "",
            validator: (value) {
              if (kDebugMode) {
                print("Validator called: $value");
              }
              if (value!.isEmpty) {
                return "Provide a value";
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
        ElevatedButton(
          child: const Text("Process"),
          onPressed: () {
            formKey.currentState!.validate();
          },
        )
      ],
    );
  }
}
