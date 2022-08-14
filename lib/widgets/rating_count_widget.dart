import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RatingCount extends StatelessWidget {
  const RatingCount(
      {Key? key,
      required this.rating,
      required this.ratingPercent,
      required this.ratingCount})
      : super(key: key);

  final int rating;
  final double ratingPercent;
  final int ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RatingBar(
          ignoreGestures: true,
          initialRating: rating.ceilToDouble(),
          direction: Axis.horizontal,
          textDirection: TextDirection.rtl,
          allowHalfRating: false,
          itemCount: 5,
          itemSize: 18,
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
              color: Color(0xFF1E1F28),
            ),
          ),
          onRatingUpdate: (rating) {},
        ),
        LinearPercentIndicator(
          width: 140.0,
          lineHeight: 8.0,
          percent: ratingPercent,
          backgroundColor: const Color(0xFF1E1F28),
          progressColor: const Color(0xFFFF3E3E),
          barRadius: const Radius.circular(10.0),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          '$ratingCount',
          style: const TextStyle(
            fontFamily: 'Metropolis',
            color: Color(0xFFABB4BD),
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          width: 5.0,
        ),
      ],
    );
  }
}
