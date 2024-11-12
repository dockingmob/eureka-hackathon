import 'package:flutter/material.dart';
import 'package:hackathon/Components/button.dart';
import 'package:hackathon/Components/quotes.dart';
import 'package:hackathon/Components/textfields.dart';
import 'package:hackathon/constants.dart';
import 'package:hackathon/sizeconfig.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: Align(
                alignment: Alignment.topLeft,
                child: BackButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: propHeight(86),
              left: propWidth(20),
              child: const Row(
                children: [
                  Text(
                    "Welcome back",
                    style: TextStyle(
                      fontFamily: "BagelFatOne",
                      fontWeight: FontWeight.w300,
                      color: kSecondaryColor,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    ",",
                    style: TextStyle(
                      fontFamily: "BagelFatOne",
                      fontWeight: FontWeight.w300,
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: propHeight(120),
              left: propWidth(20),
              child: const Text(
                "remind me who you are",
                style: TextStyle(
                  fontFamily: "BagelFatOne",
                  fontWeight: FontWeight.w300,
                  fontSize: 30,
                ),
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
              top: propHeight(270),
              left: propWidth(20),
              child: const Text(
                "Password",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
            ),
            Positioned(
              top: propHeight(300),
              left: propWidth(20),
              child: SmallField(
                textController: password,
                hint: "********",
                obscureText: true,
              ),
            ),
            Positioned(
              top: propHeight(405),
              left: propWidth(20),
              child:  QuoteCard(
                quote: quotes[1]
              ),
            ),
            Positioned(
              top: propHeight(695),
              left: propWidth(45),
              child: BigButton(
                text: "Continue the journey",
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
