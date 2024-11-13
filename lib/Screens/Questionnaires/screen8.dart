import 'package:flutter/material.dart';

import '../../Components/button.dart';
import '../../sizeconfig.dart';

class QScreenSeven extends StatelessWidget {
  const QScreenSeven({super.key});

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
                    "Traveler, is this a journey of discovery or you have a destination?",
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
                label: "Discovery",
                onPressed: () {},
              ),
            ),
            Positioned(
              top: propHeight(430),
              left: propWidth(20),
              child: QuestionnaireButton(
                label: "I know where I'm going",
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
