import 'package:flutter/material.dart';

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
              top: propHeight(220),
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
              top: propHeight(250),
              left: propWidth(20),
              child: SmallField(
                textController: email,
                hint: "name@example.com",
                obscureText: false,
              ),
            ),
            Positioned(
              top: propHeight(305),
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
              top: propHeight(340),
              left: propWidth(20),
              child: SmallField(
                textController: password,
                hint: "********",
                obscureText: true,
              ),
            ),
            Positioned(
              top: propHeight(400),
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
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
