import 'package:flutter/material.dart';
import 'package:hackathon/Components/button.dart';
import 'package:hackathon/Screens/Questionnaires/screen8.dart';
import 'package:hackathon/constants.dart';

import '../../sizeconfig.dart';

class QScreenFive extends StatelessWidget {
  const QScreenFive({super.key});

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
                    "Do you know any programing language? Select all that apply",
                    style: TextStyle(
                      fontFamily: "BagelFatOne",
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: propHeight(287),
              left: propWidth(20),
              child: CheckButton(label: languages.first),
            ),
            Positioned(
              top: propHeight(287),
              left: propWidth(102),
              child: CheckButton(label: languages[1]),
            ),
            Positioned(
              top: propHeight(287),
              left: propWidth(242),
              child: CheckButton(label: languages[2]),
            ),
            Positioned(
              top: propHeight(342),
              left: propWidth(20),
              child: CheckButton(label: languages[4]),
            ),
            Positioned(
              top: propHeight(342),
              left: propWidth(110),
              child: CheckButton(label: languages[5]),
            ),
            Positioned(
              top: propHeight(342),
              left: propWidth(188),
              child: CheckButton(label: languages[6]),
            ),
            Positioned(
              top: propHeight(400),
              left: propWidth(20),
              child: CheckButton(label: languages[7]),
            ),
            Positioned(
              top: propHeight(400),
              left: propWidth(80),
              child: CheckButton(label: languages[8]),
            ),
            Positioned(
              top: propHeight(400),
              left: propWidth(170),
              child: CheckButton(label: languages[9]),
            ),
            Positioned(
              top: propHeight(400),
              left: propWidth(260),
              child: CheckButton(label: languages[10]),
            ),
            Positioned(
              top: propHeight(460),
              left: propWidth(20),
              child: CheckButton(label: languages[11]),
            ),
            Positioned(
              top: propHeight(460),
              left: propWidth(100),
              child: CheckButton(label: languages[12]),
            ),
            Positioned(
              top: propHeight(460),
              left: propWidth(230),
              child: CheckButton(label: languages[13]),
            ),
            Positioned(
              top: propHeight(520),
              left: propWidth(20),
              child: CheckButton(label: languages[14]),
            ),
            Positioned(
              top: propHeight(520),
              left: propWidth(100),
              child: CheckButton(label: languages[15]),
            ),
            Positioned(
              top: propHeight(520),
              left: propWidth(195),
              child: CheckButton(label: languages[16]),
            ),
            Positioned(
              top: propHeight(695),
              left: propWidth(45),
              child: BigButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QScreenSeven(),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

List stuff = List.generate(
  languages.length,
  (index) => CheckButton(
    label: languages[index],
  ),
);
