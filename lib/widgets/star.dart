import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/drag_photo.dart';
import 'package:flutter_task/widgets/sen_review.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Star extends StatelessWidget {
  const Star({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxLines = 5;

    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Row(
            children: const [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 30, 0, 0),
                child: Text("8 reviews",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(3.0, 3.0),
                          blurRadius: 10.0,
                          color: Color.fromARGB(96, 255, 255, 255),
                        )
                      ],
                      fontFamily: 'Metropolis',
                      color: Color.fromARGB(199, 255, 255, 255),
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Text(
            "What is your Rate?",
            style: TextStyle(
              fontFamily: 'Metropolis',
              color: Color.fromARGB(199, 255, 255, 255),
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          RatingBar.builder(
              minRating: 1,
              unratedColor: Colors.grey,
              itemBuilder: (context, _) => const Icon(
                    Icons.star_outlined,
                    color: Colors.amber,
                    size: 42,
                  ),
              onRatingUpdate: (rating) {}),
          const SizedBox(height: 10),
          const Text(
            "please share your opinion",
            style: TextStyle(
              fontFamily: 'Metropolis',
              color: Color.fromARGB(199, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            "about the product",
            style: TextStyle(
              fontFamily: 'Metropolis',
              color: Color.fromARGB(199, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: Container(
              margin: EdgeInsets.all(12),
              height: maxLines * 50.0,
              child: TextField(
                maxLines: maxLines,
                autocorrect: true,
                style: TextStyle(
                  color: Color(0xFFF6F6F6),
                ),
                decoration: InputDecoration(
                  hintText: "Your review ",
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(211, 255, 255, 255),
                      fontFamily: "Metropolis",
                      fontSize: 14),
                  fillColor: const Color.fromARGB(255, 37, 38, 49),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 22),
              child: Drag(),
            )
          ]),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 12, bottom: 50),
              child: Text(
                "Add your photos",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Metropolis'),
              ),
            )
          ]),
          Expanded(child: SendReviewButt()),
          const SizedBox(
              height: 5,
              width: 134,
              child: const ColoredBox(color: Colors.white)),
        ],
      )),
    );
  }
}
