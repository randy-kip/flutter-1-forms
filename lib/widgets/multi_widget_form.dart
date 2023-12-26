import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MultiWidgetForm extends StatefulWidget {
  const MultiWidgetForm({super.key});

  @override
  State<StatefulWidget> createState() => _MultiWidgetForm();
}

class _MultiWidgetForm extends State<MultiWidgetForm> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Expanded(
            child: ListView(
              children: [
                TextFormField(
                  initialValue: "",
                  validator: (value) {
                    // ignore: avoid_print
                    print("Validating name field...");
                    if (value!.isEmpty) {
                      return "Provide your name";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(labelText: "Name"),
                ),
                TextFormField(
                  initialValue: "",
                  validator: (value) {
                    if (kDebugMode) {
                      print("Validating email field...");
                    }
                    var regex =
                        RegExp(r"^[A-Za-z0-9]+@[A-Za-z]+\.[A-Za-z]+$");
                    if (!regex.hasMatch(value!)) {
                      return "Provide a valid email";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(labelText: "Email"),
                ),
                TextFormField(
                  initialValue: "",
                  maxLength: 200,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  validator: (value) {
                    if (kDebugMode) {
                      print("Validating message field...");
                    }
                    if (value!.isEmpty) {
                      return "Input your message";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(labelText: "Message"),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          child: const Text("Process"),
          onPressed: () {
            if (formKey.currentState!.validate()) {
              if (kDebugMode) {
                print("[INFO] Form is valid.");
              }
            }
          },
        )
      ],
    );
  }
}
