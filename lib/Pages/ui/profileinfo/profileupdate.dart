import 'package:flutter/material.dart';
import 'package:health_app/Pages/root/root_page.dart';

class Profileinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white12,
          title: (Text(
            "Profile Info",
            style: TextStyle(fontSize: 19, color: Colors.black),
          )),
          elevation: 0,
        ),
        body: Column(
          children: [
            Divider(
              color: Colors.black,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.only(top: 27),
                  child: Text(
                    "ADD \n PHOTO",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue[500]),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(hintText: "Name"),
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(hintText: "Last Name"),
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Referel Code(Optional"),
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 200),
            ),
            Text(
              "Please enter your name and add an optional\n referral code invited by friends",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(
              height: 50,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RootPage(),
                    ));
              },
              child: Text(
                "Save and Continue",
                style: TextStyle(color: Colors.white),
              ),
              color: Color(0xffF5B5A3),
              height: 50,
              minWidth: 250,
            ),
          ],
        ));
  }
}
