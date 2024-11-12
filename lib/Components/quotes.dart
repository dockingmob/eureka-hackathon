import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    super.key,
    required this.quote,
  });
  final String quote;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 350,
        height: 300,
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Image(
                image: AssetImage("Assets/images/icons8-quotes-90 (2).png"),
                width: 60,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  quote,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontFamily: "BagelFatOne",
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: Image(
                image: AssetImage("Assets/images/icons8-quotes-90.png"),
                width: 60,
              ),
            ),
          ],
        ));
  }
}
