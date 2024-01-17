import 'package:flutter/material.dart';
import 'package:forms_fa/screens/basic_form_screen.dart';
import 'package:forms_fa/screens/checkbox_screen.dart';
import 'package:forms_fa/screens/dropdown_screen.dart';
import 'package:forms_fa/screens/emails_screen.dart';
import 'package:forms_fa/screens/multi_widget_screen.dart';
import 'package:forms_fa/screens/password_screen.dart';
import 'package:forms_fa/screens/radio_screen.dart';
import 'package:forms_fa/screens/slider_screen.dart';
import 'package:forms_fa/screens/switch_input_screen.dart';
import 'package:forms_fa/screens/text_input_screen.dart';
import 'package:forms_fa/screens/validating_form_screen.dart';
import 'package:forms_fa/shared/menu_drawer.dart';
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
        '/checkbox': (context) => const CheckboxScreen(),
        '/dropdown': (context) => const DropdownScreen(),
        '/emails': (context) => const EmailSignInScreen(),
        '/multi': (context) => const MultiWidgetScreen(),
        '/passfield': (context) => const PasswordResetScreen(),
        '/radio': (context) => const RadioInputScreen(),
        '/slider': (context) => const SliderScreen(),
        '/switch': (context) => const SwitchScreen(),
        '/text': (context) => const ZazzTextInputScreen(),
        '/validating': (context) => const PurpleHazeScreen()        
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
