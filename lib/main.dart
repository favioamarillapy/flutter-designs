import 'package:flutter/material.dart';
import 'package:flutter_designs/screens/basic_design.dart';
import 'package:flutter_designs/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: "scroll-design-screen",
      routes: {
        "basic-design-screen": (context) => const BasicDesignScreen(),
        "scroll-design-screen": (context) => const ScrollDesign(),
      },
    );
  }
}
