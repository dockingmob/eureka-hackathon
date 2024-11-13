import 'package:flutter/material.dart';

import '../../Components/button.dart';
import '../../sizeconfig.dart';

class QScreenTen extends StatelessWidget {
  const QScreenTen({super.key});

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
                    "Traveler, do you prefer working alone, in small teams, or in large collaborative environments?",
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
                label: "Alone",
                onPressed: () {},
              ),
            ),
            Positioned(
              top: propHeight(430),
              left: propWidth(20),
              child: QuestionnaireButton(
                label: "Small Team",
                onPressed: () {},
              ),
            ),
            Positioned(
              top: propHeight(530),
              left: propWidth(20),
              child: QuestionnaireButton(
                  label: "Large Environment", onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
