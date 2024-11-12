import 'package:flutter/material.dart';
import 'package:hackathon/Screens/SignUp/screen3.dart';

import '../../Components/button.dart';
import '../../Components/quotes.dart';
import '../../Components/textfields.dart';
import '../../constants.dart';
import '../../sizeconfig.dart';

class EmailPasswordScreen extends StatelessWidget {
  const EmailPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
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
                    "Just need your email and passcode, then you're free to go",
                    style: TextStyle(
                      fontFamily: "BagelFatOne",
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: propHeight(210),
              left: propWidth(20),
              child: const Text(
                "Email",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
            ),
            Positioned(
              top: propHeight(240),
              left: propWidth(20),
              child: SmallField(
                textController: email,
                hint: "name@example.com",
                obscureText: false,
              ),
            ),
            Positioned(
              top: propHeight(295),
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
              top: propHeight(330),
              left: propWidth(20),
              child: SmallField(
                textController: password,
                hint: "********",
                obscureText: true,
              ),
            ),
            Positioned(
              top: propHeight(390),
              left: propWidth(20),
              child: QuoteCard(
                quote: quotes[3],
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
                      builder: (context) => const OTPScreen(),
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
