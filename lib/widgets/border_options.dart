import 'package:flutter/material.dart';

class BorderOptionsTile extends StatelessWidget {
  const BorderOptionsTile({Key? key, required this.text, this.top = false})
      : super(key: key);
  final String text;
  final bool top;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 47,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.4,
            color: const Color(0xFFABB4BD).withOpacity(0.25),
          ),
          top: top
              ? BorderSide(
                  width: 0.4,
                  color: const Color(0xFFABB4BD).withOpacity(0.25),
                )
              : BorderSide.none,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 21.33,
          ),
          child: Row(
            children: [
              Text(
                text,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.keyboard_arrow_right,
                color: Color(0xFFABB4BD),
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
