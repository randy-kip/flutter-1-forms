import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BasicForm extends StatefulWidget {
  const BasicForm({super.key});

  @override
  State<StatefulWidget> createState() => _BasicFormState();
}

class _BasicFormState extends State<BasicForm> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  onSaved: (value) {
                    if (kDebugMode) {
                      print("Value: '$value'");
                    }
                  },
                ),
                TextFormField(
                  onSaved: (value) {
                    if (kDebugMode) {
                      print("Value: '$value'");
                    }
                  },
                ),
                TextFormField(
                  initialValue: "Hi",
                  onSaved: (value) {},
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Provide a value.";
                    }
                    return null;
                  },
                ),
              ],
            )),
        ElevatedButton(
          child: const Text("Continue"),
          onPressed: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
            }
          },
        )
      ],
    );
  }
}
