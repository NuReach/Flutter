import 'package:flutter/material.dart';

class Loginscreenv2 extends StatelessWidget {
  const Loginscreenv2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Colors.pink, Colors.white])),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Hello again !",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: Colors.white,
                ),
              ),
              Text(
                "Welcome back you've been missed!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: Colors.white54,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
