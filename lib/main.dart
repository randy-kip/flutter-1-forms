import 'package:flutter/material.dart';
import 'package:forms_fa/shared/menu_drawer.dart';
import 'package:forms_fa/widgets/basic_form.dart';
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
        '/bf': (context) => const BasicForm()
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
