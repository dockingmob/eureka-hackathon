import 'package:flutter/material.dart';
import 'package:hackathon/Screens/Questionnaires/screen6.dart';

import '../../Components/button.dart';
import '../../sizeconfig.dart';

class QScreenFour extends StatelessWidget {
  const QScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
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
                    "Do you have an ideaa of what you want to do?",
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QScreenFive(),
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
