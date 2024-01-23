import 'package:flutter/material.dart';

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField(
      {super.key,
      String title = "",
      FormFieldSetter<bool>? onSaved,
      validator,
      bool initialValue = false,
      AutovalidateMode autovalidateMode = AutovalidateMode.disabled})
      : super(
            onSaved: onSaved,
            validator: (bool? value) {
            return value == true ? null : "You must check this";
          },
            initialValue: initialValue,
            autovalidateMode: autovalidateMode,
            builder: (FormFieldState<bool> state) {
              return Column(
                children: [
                  CheckboxListTile(
                      title: Text(title),
                      value: state.value,
                      onChanged: (value) {
                        state.didChange(value);
                      }),
                  if (state.hasError)
                    Text(
                      state.errorText ??
                          "", // Provide a default empty string if state.errorText is null
                      style: const TextStyle(color: Colors.red),
                    )
                  else
                    Container()
                ],
              );
            });
}
