import 'package:flutter/material.dart';
import 'package:flutter_task/screens/page_2.dart';
import '/screens/page_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF1E1F28),
        primarySwatch: Colors.blue,
      ),
      home: const PageOne(),
    );
  }
}
