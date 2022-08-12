import 'package:flutter/material.dart';

class BorderTile extends StatelessWidget {
  const BorderTile({Key? key, required this.text, required this.width})
      : super(key: key);
  final String text;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFABB4BD),
          width: 0.4,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'Metropolis',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
