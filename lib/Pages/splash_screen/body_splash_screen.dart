import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/splash.png",
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Personalized on-demand virtual health \n and fitness assistance with no contracts!",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
