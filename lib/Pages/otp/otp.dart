import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:health_app/Pages/otp/components/otp_components.dart';
import 'package:health_app/Pages/otp/vefrify_number.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        otpcenter(),
        Row(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CountryCodePicker(
                    initialSelection: 'Pk',
                    alignLeft: true,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.only(right: 22),
                  child: TextField(
                    keyboardType: TextInputType.number,
                  ),
                ))
          ],
        ),
        FlatButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VerifyNumber(),
                ));
          },
          child: Text(
            "Next",
            style: TextStyle(color: Colors.white),
          ),
          color: Color(0xffF5B5A3),
          height: 50,
          minWidth: 250,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 70),
        ),
      ],
    ));
  }
}
