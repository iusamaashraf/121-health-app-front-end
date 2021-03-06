import 'package:flutter/material.dart';

Center otpcenter() {
  return Center(
      child: Padding(
    padding: const EdgeInsets.only(top: 100),
    child: Column(
      children: [
        Text(
          "Your Phone Number",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 25),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Please confirm your country code \nand enter your phone number",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
        ),
      ],
    ),
  ));
}
