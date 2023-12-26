import 'package:flutter/material.dart';

class DropdownInput extends StatefulWidget {
  const DropdownInput({super.key});

  @override
  State<StatefulWidget> createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
  String dropdownValue = "Apples";
  var dropdownItems = <String>["Apples", "Oranges", "Peaches"];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownValue,
      onChanged: (value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: dropdownItems.map((String item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(),
    );
  }
}
