import 'package:flutter/material.dart';
import 'package:flutter_projects/coffee_prefs.dart';
import 'package:flutter_projects/styled_body_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("My Coffee",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.brown[300],
            child: StyledBodyText("How I like my coffee..."),
          ),

          Container(
            padding: EdgeInsets.all(20),
            color: Colors.brown[200],
            child: CoffeePrefs(),
          ),
          Expanded(
              child: Image.asset("assets/img/coffee_bg.jpg",
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,),
          ),
        ],
      ),
    );
  }
}
