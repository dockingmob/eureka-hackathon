import 'package:flutter/material.dart';
//import 'package:hackathon/Components/card.dart';
import 'package:hackathon/Components/quotes.dart';

class ComponentTest extends StatelessWidget {
  const ComponentTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: QuoteCard(
          quote: "Fall seven times, stand up eight",
        ),
      ),
    );
  }
}
