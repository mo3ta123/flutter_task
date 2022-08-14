import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/star.dart';

class AddReviewPage extends StatelessWidget {
  const AddReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Icon(
            Icons.arrow_back_ios,
            size: 17.45,
          ),
        ),
        title: const Text(
          "Rating and reviews",
          style: TextStyle(
            fontFamily: 'Metropolis',
            color: Color.fromARGB(199, 255, 255, 255),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 37, 38, 49),
      ),
      body: Stack(children: [Star()]),
    );
  }
}
