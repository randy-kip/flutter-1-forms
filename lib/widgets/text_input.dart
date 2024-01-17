import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput({super.key, required String hintText});

  @override
  State<StatefulWidget> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    textController.addListener(() {
      if (kDebugMode) {
        print("Current value is ${textController.text}");
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    textController.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(labelText: "Name"),
      maxLength: 50,
      controller: textController,
    );
  }
}
