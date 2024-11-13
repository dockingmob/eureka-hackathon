import 'package:flutter/material.dart';
import 'package:hackathon/Components/card.dart';

import '../../sizeconfig.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Sizeconfig.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF1DBDD),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: propWidth(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: BackButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: propHeight(10),
                ),
                child: Flexible(
                  child: SizedBox(
                    width: propHeight(350),
                    child: const Text(
                      "The journey awaits, choose your path",
                      style: TextStyle(
                        fontFamily: "BagelFatOne",
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (
                    BuildContext context,
                    int index,
                  ) =>
                      Padding(
                    padding: EdgeInsets.only(
                        top: propHeight(10), bottom: propHeight(10)),
                    child: CardWidget(
                      role: "role",
                      description: "description",
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
