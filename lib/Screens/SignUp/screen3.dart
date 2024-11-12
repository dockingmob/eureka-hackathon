import 'package:flutter/material.dart';
import 'package:hackathon/Components/textfields.dart';
import 'package:hackathon/Screens/Questionnaires/screen1.dart';
import 'package:hackathon/sizeconfig.dart';

import '../../Components/button.dart';
import '../../Components/quotes.dart';
import '../../constants.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

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
                    "Hey, I'm gonna need that key to lock this in",
                    style: TextStyle(
                      fontFamily: "BagelFatOne",
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: propHeight(215),
              left: propWidth(20),
              child: SizedBox(
                height: propHeight(70),
                width: propWidth(350),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OTPField(),
                    OTPField(),
                    OTPField(),
                    OTPField(),
                  ],
                ),
              ),
            ),
            Positioned(
              top: propHeight(390),
              left: propWidth(20),
              child: QuoteCard(
                quote: quotes[4],
              ),
            ),
            Positioned(
              top: propHeight(695),
              left: propWidth(45),
              child: BigButton(
                text: "Move Forward",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IntroScreen(),
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
