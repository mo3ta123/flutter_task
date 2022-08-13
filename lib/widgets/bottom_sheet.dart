import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/circular_button_widget.dart';
import '/widgets/border_tile.dart';
import '/widgets/border_options.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 368,
          width: MediaQuery.of(context).size.width,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: Color(0xFF1E1F28),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(34),
              topRight: Radius.circular(34),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 18,
              ),
              Container(
                height: 6,
                width: 60,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Color(0xFFABB4BD),
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Select size',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Wrap(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                    child: BorderTile(text: 'XS', width: 100),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                    child: BorderTile(text: 'S', width: 100),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                    child: BorderTile(text: 'M', width: 100),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                    child: BorderTile(text: 'L', width: 100),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                    child: BorderTile(text: 'XL', width: 100),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  BorderOptionsTile(
                    text: 'Size Info',
                    top: true,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 276,
          child: CircularButton(
            height: 48,
            width: 343,
            text: 'ADD TO CART',
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
