import 'package:flutter/material.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({Key? key}) : super(key: key);

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  @override
  bool _isFavourite = false;
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 18,
      backgroundColor: const Color(0xFF2A2C36),
      child: IconButton(
        onPressed: () {
          setState(() {
            _isFavourite = !_isFavourite;
          });
        },
        icon: Icon(
          _isFavourite ? Icons.favorite : Icons.favorite_border_outlined,
          color:
              _isFavourite ? const Color(0xFFEF3651) : const Color(0xFFDADADA),
        ),
        iconSize: 18,
      ),
    );
  }
}
