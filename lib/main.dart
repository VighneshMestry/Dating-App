import 'package:dating_app/pages/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// ClipPath helps to define our own custom shape.
// Provider - A wrapper around InheritedWidget to make them easier to use and more reusable.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'Raleway',
      ),
      home: ProfilePage(),
    );
  }
}

