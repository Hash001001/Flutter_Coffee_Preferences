import 'package:flutter/material.dart';
import 'package:flutter_projects/styled_body_text.dart';
import 'package:flutter_projects/styled_buttons.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void incStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void incSugar() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            StyledBodyText("Strength"),
            //Text("$strength"),
            SizedBox(width: 10),
            for (int i = 0; i < strength; i++)
              Image.asset(
                "assets/img/coffee_bean.png",
                width: 25,
                color: Colors.brown[200],
                colorBlendMode: BlendMode.multiply,
              ),

            Expanded(child: SizedBox()),
            StyledButton(
              onPressed: incStrength,
              child: Text("+"),
            ),
          ],
        ),

        Row(
          children: [
            StyledBodyText("Sugar"),
            //Text("$sugars"),
            SizedBox(width: 10),

            if (sugars == 0) StyledBodyText("No sugar..."),

            for (int i = 0; i < sugars; i++)
              Image.asset(
                "assets/img/sugar_cube.png",
                width: 25,
                color: Colors.brown[200],
                colorBlendMode: BlendMode.multiply,
              ),

            Expanded(child: SizedBox()),
            StyledButton(onPressed: incSugar, child: Text("+")),
          ],
        ),
      ],
    );
  }
}
