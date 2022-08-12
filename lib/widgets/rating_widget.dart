import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatelessWidget {
  const Rating({Key? key, required this.rating}) : super(key: key);
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar(
          initialRating: (rating / 2),
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 16,
          ratingWidget: RatingWidget(
            full: const Icon(
              Icons.star_rate_rounded,
              color: Color(0xFFFFBA49),
            ),
            half: const Icon(
              Icons.star_half_rounded,
              color: Color(0xFFFFBA49),
            ),
            empty: const Icon(
              Icons.star_border_rounded,
              color: Color(0xFFABB4BD),
            ),
          ),
          onRatingUpdate: (rating) {},
        ),
        const SizedBox(
          width: 2.5,
        ),
        Text(
          '(${rating.toInt()})',
          style: const TextStyle(
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w400,
            fontSize: 10,
            color: Color(0xFFABB4BD),
          ),
        ),
      ],
    );
  }
}
