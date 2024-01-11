import 'package:flutter/material.dart';
import 'package:forms_fa/screens/basic_form_screen.dart';
import 'package:forms_fa/shared/menu_drawer.dart';
import 'package:forms_fa/widgets/checkbox_form_field.dart';
import 'package:forms_fa/widgets/checkbox_input.dart';
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
// import 'package:forms/widgets/password_reset_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creating Forms with Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: const MyHomePage(title: 'Flutter Widgets'),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MyHomePage(title: 'FW'),
        '/basic': (context) => const BasicFormScreen(),
        '/checkfield': (context) => CheckboxFormField(),
        '/checkinput': (context) => const CheckboxInput(),
        '/dropdown': (context) => const DropdownInput(),
        '/emails': (context) => const EmailsInput(),
        '/multi': (context) => const MultiWidgetForm(),
        '/passfield': (context) => PasswordResetFormField(),
        '/passreset': (context) => const PasswordResetForm(),
        '/radio': (context) => const RadioInput(),
        '/slider': (context) => const SliderInput(),
        '/switch': (context) => const SwitchInput(),
        '/text': (context) => const TextInput(),
        '/validating': (context) => const ValidatingForm()        
      },
      initialRoute: '/',
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const MenuDrawer(),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(0),
          // child: PasswordResetForm(),
        ),
      ),
    );
  }
}
