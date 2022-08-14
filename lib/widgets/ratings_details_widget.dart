import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/rating_count_widget.dart';

class RatingsDetails extends StatelessWidget {
  const RatingsDetails({
    Key? key,
    required this.ratingsAverage,
    required this.ratingsCount,
    required this.rating5Count,
    required this.rating4Count,
    required this.rating3Count,
    required this.rating2Count,
    required this.rating1Count,
  }) : super(key: key);

  final double ratingsAverage;
  final int ratingsCount;
  final int rating5Count,
      rating4Count,
      rating3Count,
      rating2Count,
      rating1Count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '$ratingsAverage',
              style: const TextStyle(
                fontFamily: 'Metropolis',
                color: Color(0xFFF6F6F6),
                fontWeight: FontWeight.w400,
                fontSize: 44.0,
              ),
            ),
            Text(
              '$ratingsCount ratings',
              style: const TextStyle(
                fontFamily: 'Metropolis',
                color: Color(0xFFABB4BD),
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        //SizedBox(width: 20,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RatingCount(
                rating: 5,
                ratingPercent: rating5Count / rating5Count,
                ratingCount: rating5Count),
            RatingCount(
                rating: 4,
                ratingPercent: rating4Count / rating5Count,
                ratingCount: rating4Count),
            RatingCount(
                rating: 3,
                ratingPercent: rating3Count / rating5Count,
                ratingCount: rating3Count),
            RatingCount(
                rating: 2,
                ratingPercent: rating2Count / rating5Count,
                ratingCount: rating2Count),
            RatingCount(
                rating: 1,
                ratingPercent: rating1Count / rating5Count,
                ratingCount: rating1Count),
          ],
        ),
      ],
    );
  }
}
