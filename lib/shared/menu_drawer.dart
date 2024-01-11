import 'package:flutter/material.dart';
import 'package:forms_fa/main.dart';
import 'package:forms_fa/screens/basic_form_screen.dart';
import 'package:forms_fa/screens/checkbox_screen.dart';
import 'package:forms_fa/widgets/dropdown_input.dart';
import 'package:forms_fa/widgets/emails_input.dart';
import 'package:forms_fa/widgets/multi_widget_form.dart';
import 'package:forms_fa/widgets/password_reset_form.dart';
import 'package:forms_fa/widgets/password_reset_form_field.dart';
import 'package:forms_fa/widgets/radio_input.dart';
import 'package:forms_fa/widgets/slider_input.dart';
import 'package:forms_fa/widgets/switch_input.dart';
import 'package:forms_fa/widgets/text_input.dart';
import 'package:forms_fa/widgets/validating_form.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'Basic Form',
      'Checkbox',
      'Dropdown Input',
      'Emails Input',
      'MultiWidget Form',
      'Password Reset Form Field',
      'Password Reset Form',
      'Radio Input',
      'Slider Input',
      'Switch Input',
      'Text Input',
      'Validating Form'
    ];
    List<Widget> menuItems = [];
    menuItems.add(const DrawerHeader(
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Text('Explore',
            style: TextStyle(color: Colors.white, fontSize: 28))));
    for (var element in menuTitles) {
      Widget screen = Container();
      menuItems.add(ListTile(
        title: Text(
          element,
          style: const TextStyle(fontSize: 18),
        ),
        onTap: () {
          switch (element) {
            case 'Home':
              screen = const MyHomePage(title: 'Yop',);
              break;
            case 'Basic Form':
              screen = const BasicFormScreen();
              break;
            case 'Checkbox':
              screen = const CheckboxScreen();
              break;
            case 'Dropdown Input':
              screen = const DropdownInput();
              break;
            case 'Emails Input':
              screen = const EmailsInput();
              break;
            case 'MultiWidget Form':
              screen = const MultiWidgetForm();
              break;
            case 'Password Reset Form Field':
              screen = PasswordResetFormField();
              break;
            case 'Password Reset Form':
              screen = const PasswordResetForm();
              break;
            case 'Radio Input':
              screen = const RadioInput();
              break;
            case 'Slider Input':
              screen = const SliderInput();
              break;
            case 'Switch Input':
              screen = const SwitchInput();
              break;
            case 'Text Input':
              screen = const TextInput();
              break;
            case 'Validating Form':
              screen = const ValidatingForm();
              break;
          }
          Navigator.of(context).pop();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        },
      ));
    }
    return menuItems;
  }
}