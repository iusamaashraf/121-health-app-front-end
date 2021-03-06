import 'package:flutter/material.dart';
import 'package:health_app/Pages/ui/profileinfo/components/backaccount.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/size_config.dart';

class Finalprofile extends StatefulWidget {
  @override
  _FinalprofileState createState() => _FinalprofileState();
}

class _FinalprofileState extends State<Finalprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: RootPage(),
        appBar: AppBar(
          leading: Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          backgroundColor: Colors.white10,
          elevation: 0,
          actions: [
            Image(
              image: AssetImage("assets/nortification.png"),
            ),
            Image(
              image: AssetImage("assets/settings.png"),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/profiledoctor.png'),
                    radius: 40,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Sherley Abraham',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      'General Obstetrics & Gynecology',
                      style: TextStyle(fontSize: 14, color: Color(0xff757575)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100, top: 15),
                      child: Text(
                        'Completed Profile 40%',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff007AFF)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 5),
                      child: Container(
                        height: 4,
                        width: 200,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.topLeft,
                              colors: [Colors.grey, Color(0xff007AFF)],
                            ),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: [
                          Text(
                            'Education',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff757575)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'MBBS D. Ortho',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(height: 50, width: 1, color: Color(0xff757575)),
                      SizedBox(
                        width: 35,
                      ),
                      Column(
                        children: [
                          Text(
                            'Gender',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff757575)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 50,
                        width: 1,
                        color: Color(0xff757575),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          Text(
                            'Experiance',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff757575)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '+8 yrs',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: SizeConfig.screebWidth,
                    height: 80,
                    color: kredishColor,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/earn_money.png',
                          height: 60,
                          width: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            children: [
                              Text(
                                'Refer & Earn',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              Text(
                                'Refer a friend & both of you get \$0.99 DocCash',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_right,
                                size: 30, color: Colors.white))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: SizeConfig.screebWidth,
                        height: 60,
                        child: Row(
                          children: [
                            SizedBox(
                                width: 60,
                                child: Image.asset('assets/ic_price_plan.png')),
                            Text(
                              'Consultations Plan',
                              style: TextStyle(fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 170),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.keyboard_arrow_right,
                                      size: 30, color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: SizeConfig.screebWidth,
                        height: 60,
                        child: Row(
                          children: [
                            SizedBox(
                                width: 60,
                                child: Image.asset('assets/group.png')),
                            Text(
                              'My Clients',
                              style: TextStyle(fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 230),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.keyboard_arrow_right,
                                      size: 30, color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: SizeConfig.screebWidth,
                        height: 60,
                        child: Row(
                          children: [
                            SizedBox(
                                width: 60,
                                child:
                                    Image.asset('assets/ic_my_articles.png')),
                            Text(
                              'My Videos',
                              style: TextStyle(fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 230),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.keyboard_arrow_right,
                                      size: 30, color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: SizeConfig.screebWidth,
                        height: 60,
                        child: Row(
                          children: [
                            SizedBox(
                                width: 60,
                                child: Image.asset(
                                    'assets/ic_hospital_clinics.png')),
                            Text(
                              'Nutrition Planner',
                              style: TextStyle(fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 180),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.keyboard_arrow_right,
                                      size: 30, color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: SizeConfig.screebWidth,
                        height: 60,
                        child: Row(
                          children: [
                            SizedBox(
                                width: 60,
                                child: Image.asset('assets/ic_wire_bank.png')),
                            Text(
                              'Fitness Planner',
                              style: TextStyle(fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 193),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.keyboard_arrow_right,
                                      size: 30, color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: SizeConfig.screebWidth,
                        height: 60,
                        child: Row(
                          children: [
                            SizedBox(
                                width: 60,
                                child: Image.asset('assets/ic_wire_bank.png')),
                            Text(
                              'My Wire Bank Accounts',
                              style: TextStyle(fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 130),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Bankaccount()));
                                  },
                                  icon: Icon(Icons.keyboard_arrow_right,
                                      size: 30, color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
