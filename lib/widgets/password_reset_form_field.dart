// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forms_fa/models/passwords.dart';

class PasswordResetFormField extends FormField<Passwords> {
  PasswordResetFormField({
    Key? key, // Corrected the key parameter
    FormFieldSetter<Passwords>? onSaved,
    dynamic validator, // Corrected the validator parameter
    Passwords? initialValue,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
  }) : super(
          key: key, // Corrected the key assignment
          onSaved: onSaved,
          validator: validator,
          initialValue: initialValue,
          autovalidateMode: autovalidateMode,
          builder: (FormFieldState<Passwords> state) {
            return Column(
              children: [
                TextField(
                  obscureText: true,
                  decoration: const InputDecoration(labelText: "Password"),
                  onChanged: (String value) {
                    state.value!.password = value;
                    state.didChange(state.value);
                  },
                ),
                TextField(
                  obscureText: true,
                  decoration:
                      const InputDecoration(labelText: "Confirm Password"),
                  onChanged: (String value) {
                    state.value!.confirmPassword = value;
                    state.didChange(state.value);
                  },
                ),
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
          } 
        );
}
