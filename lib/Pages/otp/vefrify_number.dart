import 'package:flutter/material.dart';
import 'package:health_app/Pages/otp/verifyno_appbar.dart';
import 'package:health_app/Pages/ui/profileinfo/profileupdate.dart';

import 'package:sms_autofill/sms_autofill.dart';

class VerifyNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarmethod(),
      body: bodyVN(context),
    );
  }

  Column bodyVN(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.black,
        ),
        Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100),
              ),
              Text(
                "Enter the 6-digit code sent via SMS on \n\n + 852 9885 0896 ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, letterSpacing: 1),
              ),
              Padding(
                padding: EdgeInsets.only(top: 100),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: PinFieldAutoFill(
                  codeLength: 6,
                  onCodeChanged: (val) {},
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Resend Code"),
            Text("Call me 01:02"),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        RaisedButton(
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Profileinfo(),
              ),
            );
          },
          child: Text("Next"),
        )
      ],
    );
  }
}
