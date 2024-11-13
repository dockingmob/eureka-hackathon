import 'package:flutter/material.dart';
import 'package:hackathon/Screens/Questionnaires/screen10.dart';

import '../../Components/button.dart';
import '../../sizeconfig.dart';

class QScreenEight extends StatelessWidget {
  const QScreenEight({super.key});

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
                    "Traveler, what are you more intresrted in working with?",
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
                label: "Hardware",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QScreenNine(),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              top: propHeight(430),
              left: propWidth(20),
              child: QuestionnaireButton(
                label: "Software",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QScreenNine(),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              top: propHeight(530),
              left: propWidth(20),
              child: QuestionnaireButton(
                label: "Combination of both",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QScreenNine(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
