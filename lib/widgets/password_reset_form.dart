import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:forms_fa/models/passwords.dart';
import 'package:forms_fa/widgets/checkbox_form_field.dart';
import 'package:forms_fa/widgets/password_reset_form_field.dart';

class PasswordResetForm extends StatefulWidget {
  const PasswordResetForm({super.key});

  @override
  State<StatefulWidget> createState() => _PasswordResetFormState();
}

class _PasswordResetFormState extends State<PasswordResetForm> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: formKey,
          child: Expanded(
            child: ListView(
              children: [
                PasswordResetFormField(
                  initialValue: Passwords(),
                  onSaved: (passwords) {
                    if (kDebugMode) {
                      print("Password: ${passwords?.password}");
                    }
                  },
                  validator: (Passwords passwords) {
                    if (passwords.nonEmpty()) {
                      if (passwords.match()) {
                        if (passwords.valid()) {
                          return null;
                        }
                        return "Passwords should be 8 characters long";
                      }
                      return "Passwords should be same";
                    }
                    return "Passwords should not be empty";
                  },
                  autovalidateMode: AutovalidateMode.always,
                ),
                CheckboxFormField(
                  title: "I agree to change password",
                  onSaved: (checked) {
                    if (kDebugMode) {
                      print("Checkbox: $checked");
                    }
                  },
                  validator: (bool value) {
                    return value ? null : "You must check this";
                  },
                  autovalidateMode: AutovalidateMode.always,
                )
              ],
            ),
          ),
        ),
        ElevatedButton(
          child: const Text("Reset Password"),
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
