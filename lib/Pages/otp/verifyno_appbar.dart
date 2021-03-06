import 'package:flutter/material.dart';

AppBar appbarmethod() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white12,
    elevation: 0,
    title: (Text(
      "Verify Your Number",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w400, wordSpacing: 2),
    )),
    centerTitle: true,
  );
}
