import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:v2/pages/Item_page.dart';
import 'package:v2/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
 
  State<MyApp> createState     () => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => home_page(),
        "Item_page": (context) => Item_page(),
      },
    );
  }
}
