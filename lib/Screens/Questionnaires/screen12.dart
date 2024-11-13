import 'package:flutter/material.dart';
import 'package:hackathon/Components/button.dart';
import 'package:hackathon/Components/textfields.dart';

import '../../sizeconfig.dart';

class QScreenEleven extends StatelessWidget {
  const QScreenEleven({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
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
                    "Traveler, how many hours per week are you willing to commit to learning and building projects?",
                    style: TextStyle(
                      fontFamily: "BagelFatOne",
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: propHeight(280),
              left: propWidth(20),
              child: SmallField(
                textController: controller,
                obscureText: false,
              ),
            ),
            Positioned(
              top: propHeight(695),
              left: propWidth(45),
              child: BigButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
