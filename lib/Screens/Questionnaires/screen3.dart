import 'package:flutter/material.dart';
import 'package:hackathon/Components/button.dart';
import 'package:hackathon/Components/textfields.dart';

import '../../sizeconfig.dart';

class QScreenTwo extends StatelessWidget {
  const QScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    Sizeconfig.init(context);
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
                    "Traveler, do you know anything about tech that intrigues you?",
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
                  },
                ))
          ],
        ),
      ),
    );
  }
}
