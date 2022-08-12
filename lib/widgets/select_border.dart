import 'package:flutter/material.dart';

class SelectBorderTile extends StatelessWidget {
  const SelectBorderTile(
      {Key? key,
      required this.text,
      required this.width,
      required this.isError})
      : super(key: key);
  final String text;
  final double width;
  final bool isError;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: isError ? const Color(0xFFFF2424) : const Color(0xFFABB4BD),
          width: 0.4,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12.0,
            right: 12.0,
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
                Icons.keyboard_arrow_down,
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
