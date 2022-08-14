import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_task/screens/page_2.dart';

class Rating extends StatelessWidget {
  const Rating({Key? key, required this.rating, required this.numberOfRates})
      : super(key: key);
  final double rating;
  final int numberOfRates;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const RatingAndReviewsPage()));
      },
      child: Row(
        children: [
          RatingBar(
            ignoreGestures: true,
            initialRating: rating,
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
            '($numberOfRates)',
            style: const TextStyle(
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w400,
              fontSize: 10,
              color: Color(0xFFABB4BD),
            ),
          ),
        ],
      ),
    );
  }
}
