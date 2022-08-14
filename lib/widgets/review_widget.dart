import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_task/widgets/rating_widget.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          decoration: const BoxDecoration(
            color: Color(0xFF2A2C36),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            /*
            boxShadow: [
              BoxShadow(color: Color(0xFF000000), blurRadius: 25.0)
            ]),
            */
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Helene Moore',
                style: TextStyle(
                  color: Color(0xFFF6F6F6),
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Rating(rating: 4, numberOfRates: 0),
                  Text(
                    'June 5, 2019',
                    style: TextStyle(
                      color: Color(0xFFABB4BD),
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      fontSize: 11.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'The dress is great! Very classy and comfortable. It fit perfectly! I\'m 5\'7" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn\'t recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.',
                maxLines: 10,
                overflow: TextOverflow.fade,
                style: TextStyle(
                  color: Color(0xA0F5F5F5),
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  height: 1.5,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Helpful',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFABB4BD),
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      fontSize: 11.0,
                      height: 1.25,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.thumb_up,
                    color: Color(0xFFDADADA),
                    size: 15.0,
                  ),
                ],
              )
            ],
          ),
        ),
        const Positioned(
          top: 5.0,
          left: 5.0,
          child: CircleAvatar(
            radius: 17.0,
            foregroundImage: NetworkImage(
              'https://s3-alpha-sig.figma.com/img/ad00/491c/cc0d067e35dd9b263899dcc9d9612853?Expires=1661126400&Signature=DyOrPlUFMmvqpLZNIbBHLTRXLQph8jNnYU~hXUZVY3Rtt~rzklFxx6-x7jR4O8ZgsH~MOUAfSCKcf-cy5Tap64fMENEclyrMVgAbuAIhnY3I0igAFm1BHHs~1hy17lrq0~W4VW0fol5sXaST2-WJIiI0xyOput7QkTl-z7w5nw2sXE20Y7jdNzIx0Xjpmd~GeqBQxQtZfvjKg6rqLptjADGjYKQ7upUNrjsDdrKLgEZaCl62qXfilGkeIWMZuPASCKjd64emk6sFxp8k6xAFMPNefknqAdTZpud4ttL4rPsBoOQeAvu1gqFRtszIxzM5JmwmEKSs3yCeYsx3509rhA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
            ),
          ),
        )
      ],
    );
  }
}
