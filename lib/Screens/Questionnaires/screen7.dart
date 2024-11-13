import 'package:flutter/material.dart';
import 'package:hackathon/Screens/Questionnaires/screen6.dart';

import '../../Components/button.dart';
import '../../Components/textfields.dart';
import '../../sizeconfig.dart';

class QScreen6 extends StatelessWidget {
  const QScreen6({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
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
                    "Traveler, where do you see yourself at the end of this journey?",
                    style: TextStyle(
                      fontFamily: "BagelFatOne",
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: propHeight(300),
              left: propWidth(20),
              child: BigField(
                textController: controller,
              ),
            ),
            Positioned(
                top: propHeight(695),
                left: propWidth(45),
                child: BigButton(
                  onPressed: () {
                    controller.dispose();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QScreenFive(),
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
