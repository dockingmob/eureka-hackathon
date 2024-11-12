import 'package:flutter/material.dart';
import 'package:hackathon/Components/button.dart';
import 'package:hackathon/Components/quotes.dart';
import 'package:hackathon/Screens/SignIn/signIn.dart';
import 'package:hackathon/Screens/SignUp/screen1.dart';
import 'package:hackathon/constants.dart';
import 'package:hackathon/sizeconfig.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Sizeconfig.init(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: propHeight(60),
            left: propWidth(42),
            child: const Image(
              image: AssetImage(
                "Assets/images/Component 1.png",
              ),
              width: 300,
            ),
          ),
          Positioned(
            top: propHeight(395),
            left: propWidth(20),
            child:  Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: QuoteCard(
                quote:
                    quotes.first,
              ),
            ),
          ),
          Positioned(
            top: propHeight(695),
            left: propWidth(45),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: BigButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UsernameScreen(),
                    ),
                  );
                },
                text: "Choose your path",
              ),
            ),
          ),
          Positioned(
            top: propHeight(780),
            left: propWidth(84),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Know your path?",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
