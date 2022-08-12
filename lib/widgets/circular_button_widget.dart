import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton(
      {Key? key,
      required this.text,
      required this.width,
      required this.height,
      this.leading,
      this.onPressed})
      : super(key: key);
  final String text;
  final double width;
  final double height;
  final Widget? leading;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: MaterialButton(
        height: height,
        color: const Color(0xFFEF3651),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        onPressed: () => onPressed,
        splashColor: Colors.redAccent,
        child: ListTile(
          leading: leading,
          title: Text(
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
      ),
    );
  }
}
