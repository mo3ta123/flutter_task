import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_task/screens/page_3.dart';
import 'package:flutter_task/widgets/rating_count_widget.dart';
import 'package:flutter_task/widgets/ratings_details_widget.dart';
import 'package:flutter_task/widgets/review_widget.dart';

class RatingAndReviewsPage extends StatefulWidget {
  const RatingAndReviewsPage({Key? key}) : super(key: key);

  @override
  State<RatingAndReviewsPage> createState() => _RatingAndReviewsPageState();
}

class _RatingAndReviewsPageState extends State<RatingAndReviewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1F28),
        elevation: 0,
        leading: IconButton(
          iconSize: 40,
          splashRadius: 20,
          icon: const Icon(Icons.keyboard_arrow_left),
          onPressed: () {},
        ),
      ),
      backgroundColor: const Color(0xFF1E1F28),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            physics: ScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Rating&Reviews',
                  style: TextStyle(
                    color: Color(0xFFF6F6F6),
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                    fontSize: 36.0,
                  ),
                ),
                const SizedBox(
                  height: 56.0,
                ),
                //RatingCount(rating: 1, ratingPercent: 1.0, ratingCount: 12)
                const RatingsDetails(
                  ratingsAverage: 4.3,
                  ratingsCount: 23,
                  rating5Count: 12,
                  rating4Count: 5,
                  rating3Count: 4,
                  rating2Count: 2,
                  rating1Count: 0,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const Text(
                  '8 reviews',
                  style: TextStyle(
                    color: Color(0xFFF6F6F6),
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return Review();
                  }),
                ),
              ],
            ),
          ),
          /*Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height / 10,
                ),
              ),
            ),
          ),
          */
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddReviewPage()));
        },
        backgroundColor: const Color(0xFFEF3651),
        autofocus: true,
        elevation: 10.0,
        icon: Icon(
          Icons.edit,
          color: Colors.white,
          size: 20.0,
        ),
        label: const Text(
          'Write a review',
          style: TextStyle(
            color: Color(0xFFF5F5F5),
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w400,
            fontSize: 11.0,
          ),
        ),
      ),
    );
  }
}
