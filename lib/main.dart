import 'package:flutter/material.dart';
import 'package:getxtwopart/pages/final_method.dart';
import 'package:getxtwopart/pages/home_page.dart';
import 'package:getxtwopart/pages/main_page.dart';
import 'package:getxtwopart/pages/splash_page.dart';
import 'package:getxtwopart/services/di_services.dart';

main() async {
  await DIService.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FinalMethodPage(),
    );
  }
}
