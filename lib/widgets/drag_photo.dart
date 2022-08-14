import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Drag extends StatelessWidget {
  const Drag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      margin: EdgeInsets.only(bottom: 5),
      child: ClipOval(
          child: Material(
        color: Color(0xFFEF3651),
        child: InkWell(
          radius: 100,
          splashColor: Color.fromARGB(255, 255, 176, 202),
          onTap: (() {}),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.camera_alt,
                size: 40,
                color: Colors.white,
              ),
              
               // <-- Icon
            ],
          ),
        ),
      )),
    );
  }
}
