import 'package:flutter/material.dart';
import 'package:hackathon/Components/button.dart';
//import 'package:hackathon/Components/card.dart';
//import 'package:hackathon/Components/quotes.dart';

class ComponentTest extends StatelessWidget {
  const ComponentTest({super.key});

  @override
  Widget build(BuildContext context) {
    //TextEditingController controller = TextEditingController();
    return const Scaffold(
      body: Center(
        child: CheckButton(
          label: "Something Extra",
        ),
      ),
    );
  }
}
