import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    super.key,
    required this.quote,
  });
  final String quote;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: SizedBox(
          width: 370,
          height: 350,
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Image(
                  image: AssetImage(
                    "Assets/images/icons8-quotes-90 (2).png",
                  ),
                  width: 60,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
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
                  image: AssetImage(
                    "Assets/images/icons8-quotes-90.png",
                  ),
                  width: 60,
                ),
              ),
            ],
          )),
    );
  }
}
