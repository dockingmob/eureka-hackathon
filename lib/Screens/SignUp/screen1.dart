import 'package:flutter/material.dart';
import 'package:hackathon/Components/quotes.dart';
import 'package:hackathon/Components/textfields.dart';
import 'package:hackathon/Screens/SignUp/screen2.dart';
import 'package:hackathon/constants.dart';
import 'package:hackathon/sizeconfig.dart';

import '../../Components/button.dart';

class UsernameScreen extends StatelessWidget {
  const UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: propHeight(20),
              left: propWidth(20),
              child: BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.black,
              ),
            ),
            Positioned(
              top: propHeight(85),
              left: propWidth(20),
              child: const Text(
                "Got a handle, or do I",
                style: TextStyle(
                  fontFamily: "BagelFatOne",
                  fontSize: 30,
                ),
              ),
            ),
            Positioned(
              top: propHeight(120),
              left: propWidth(20),
              child: const Row(
                children: [
                  Text(
                    "just call you ",
                    style: TextStyle(
                      fontFamily: "BagelFatOne",
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "'",
                    style: TextStyle(
                      fontFamily: "BagelFatOne",
                      fontSize: 30,
                      color: kHighlightColor,
                    ),
                  ),
                  Text(
                    "mystery",
                    style: TextStyle(
                      fontFamily: "BagelFatOne",
                      fontSize: 30,
                      color: kAccentColor,
                    ),
                  ),
                  Text(
                    "'",
                    style: TextStyle(
                      fontFamily: "BagelFatOne",
                      fontSize: 30,
                      color: kHighlightColor,
                    ),
                  ),
                  Text(
                    " ?",
                    style: TextStyle(
                      fontFamily: "BagelFatOne",
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: propHeight(180),
              left: propWidth(20),
              child: const Text(
                "Username",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
            ),
            Positioned(
              top: propHeight(210),
              left: propWidth(20),
              child: SmallField(
                textController: username,
                hint: "mystery",
                obscureText: false,
              ),
            ),
            Positioned(
              top: propHeight(390),
              left: propWidth(20),
              child: QuoteCard(
                quote: quotes[2],
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
                      builder: (context) => const EmailPasswordScreen(),
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
