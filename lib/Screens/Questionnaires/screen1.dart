import 'package:flutter/material.dart';
import 'package:hackathon/Screens/Questionnaires/screen2.dart';
import 'package:hackathon/constants.dart';

import '../../Components/button.dart';
import '../../Components/quotes.dart';
import '../../sizeconfig.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Sizeconfig.init(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Stack(
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
              left: propWidth(30),
              child: Flexible(
                child: SizedBox(
                  width: propHeight(350),
                  child: const Text(
                    "Alright, let's get some things straight first - answers and checkboxes, please!",
                    style: TextStyle(
                      fontFamily: "BagelFatOne",
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: propHeight(390),
              left: propWidth(20),
              child: QuoteCard(
                quote: quotes.last,
              ),
            ),
            Positioned(
              top: propHeight(695),
              left: propWidth(45),
              child: BigButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QScreenOne(),
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
