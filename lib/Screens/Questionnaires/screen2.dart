import 'package:flutter/material.dart';
import 'package:hackathon/Components/button.dart';

import '../../sizeconfig.dart';

class QScreenOne extends StatelessWidget {
  const QScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    Sizeconfig.init(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: propHeight(10),
              left: propWidth(20),
              child: BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.black,
              ),
            ),
            Positioned(
              top: propHeight(75),
              left: propWidth(20),
              child: Flexible(
                child: SizedBox(
                  width: propHeight(350),
                  child: const Text(
                    "Traveler, do you know any of the tech or engineering of this land?",
                    style: TextStyle(
                      fontFamily: "BagelFatOne",
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: propHeight(330),
              left: propWidth(20),
              child: QuestionnaireButton(
                label: "Yes",
                onPressed: () {},
              ),
            ),
            Positioned(
              top: propHeight(430),
              left: propWidth(20),
              child: QuestionnaireButton(
                label: "No",
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
