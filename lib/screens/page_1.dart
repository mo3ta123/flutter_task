import 'package:flutter/material.dart';
import '/widgets/circular_button_widget.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CircularButton(
        height: 36,
        width: 160,
        text: 'Hello',
      )),
    );
  }
}
