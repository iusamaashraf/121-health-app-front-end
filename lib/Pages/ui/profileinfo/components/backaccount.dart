import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';

class Bankaccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFF4),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1,
        backgroundColor: Colors.white,
        title: (Text(
          'Wire Bank Accounts',
          style: TextStyle(fontSize: 20, color: Colors.black),
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 40),
            child: Text(
              'Your Linked Wire Accounts',
              style: TextStyle(color: Color(0xff5C5C5C), fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              top: 40,
            ),
            child: Container(
              height: 170,
              width: 380,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 10, 0, 0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 90,
                              width: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffFAFAFA)),
                              child: Image.asset(
                                'assets/ic_bank.png',
                                height: 70,
                              ),
                            ),
                            Text(
                              'Primary',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Text(
                            'Wire transfer to ICICI\n Bank Account ....0528\n\nSherley Abraham'),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 45,
                        width: 160,
                        // color: Colors.black,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(16)),
                            color: kredishColor),
                        child: Text(
                          'Auto-Withdrawl',
                          style: TextStyle(
                              fontSize: 16, color: Colors.white, height: 2),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              top: 40,
            ),
            child: Container(
              height: 170,
              width: 380,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 10, 0, 0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 90,
                              width: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffFAFAFA)),
                              child: Image.asset(
                                'assets/ic_bank.png',
                                height: 70,
                              ),
                            ),
                            Text(
                              'Primary',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Text(
                            'Wire transfer to ICICI\n Bank Account ....0528\n\nRohit Shekhar'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 25),
            child: Row(
              children: [
                Image.asset(
                  'assets/ic_add.png',
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Add wire transfer account',
                  style: TextStyle(color: Color(0xff007AFF)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
