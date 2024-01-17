import 'package:flutter/material.dart';
import 'package:forms_fa/main.dart';
import 'package:forms_fa/screens/basic_form_screen.dart';
import 'package:forms_fa/screens/checkbox_screen.dart';
import 'package:forms_fa/screens/dropdown_screen.dart';
import 'package:forms_fa/screens/emails_screen.dart';
import 'package:forms_fa/screens/multi_widget_screen.dart';
import 'package:forms_fa/screens/password_screen.dart';
import 'package:forms_fa/screens/radio_screen.dart';
import 'package:forms_fa/screens/slider_screen.dart';
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
      'Password Reset',
      'Radio',
      'Slider',
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
              screen = const DropdownScreen();
              break;
            case 'Emails Input':
              screen = const EmailSignInScreen();
              break;
            case 'MultiWidget Form':
              screen = const MultiWidgetScreen();
              break;
            case 'Password Reset':
              screen = const PasswordResetScreen();
              break;
            case 'Radio':
              screen = const RadioInputScreen();
              break;
            case 'Slider Input':
              screen = const SliderScreen();
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