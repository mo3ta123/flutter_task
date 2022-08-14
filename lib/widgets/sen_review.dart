import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SendReviewButt extends StatelessWidget {
  const SendReviewButt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          ElevatedButton(
            onPressed: () {},
            
            child: Text(
              "Send Review",
              style: TextStyle(
                fontFamily: 'Metropolis',
                color: Color.fromARGB(199, 255, 255, 255),
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFEF3651),
                fixedSize: const Size(330, 48),
                shadowColor: Colors.grey,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                    ),
          )
        ]),
      ),
    );
  }
}
