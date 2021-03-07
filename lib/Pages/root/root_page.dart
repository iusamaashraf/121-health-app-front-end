import 'package:flutter/material.dart';
import 'package:health_app/Pages/ui/chats/chat.dart';
import 'package:health_app/Pages/ui/home/home.dart';
import 'package:health_app/Pages/ui/my_appts/my_appts.dart';
import 'package:health_app/Pages/ui/profileinfo/profile.dart';
import 'package:health_app/Pages/ui/wallet/wallet.dart';
import 'package:health_app/size_config.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int selectedindex = 0;
  List<Widget> pages = [
    Home(),
    Chats(),
    MyAppts(),
    Wallet(),
    Finalprofile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: pages[selectedindex],
            ),
            bottomNavBar(),
          ],
        ));
  }

  Widget bottomNavBar() {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 5),
      width: SizeConfig.screebWidth,
      height: 80,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildItem(
              ('assets/bottomnavigationbar/speedometer.png'), (0), ('Home')),
          buildItem(
              ('assets/bottomnavigationbar/chat_filled.png'), 1, ('Chat')),
          buildItem(('assets/bottomnavigationbar/today1.png'), 2, ('MyAppt')),
          buildItem(
              ('assets/bottomnavigationbar/Group 4371.png'), 3, ('Wallet')),
          buildItem(
              ('assets/bottomnavigationbar/Path 1039.png'), 4, ('Profile')),
        ],
      ),
    );
  }

  Widget buildItem(String imgdata, int index, String namedata) {
    return Container(
        height: 60,
        width: 50,
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    selectedindex = index;
                  });
                },
                child: Image.asset(
                  imgdata,
                  color: index == selectedindex ? Colors.orange : Colors.grey,
                )),
            SizedBox(
              height: 8,
            ),
            Text(
              namedata,
              style: TextStyle(
                  fontSize: 12,
                  color: index == selectedindex ? Colors.orange : Colors.grey),
            ),
          ],
        ));
  }

  // Widget buildItem({IconData icons, int index}) {
  //   return IconButton(
  //       icon: Icon(icons),
  //       onPressed: () {
  //         setState(() {
  //           selectedindex = index;
  //         });
  //       },
  //       color: selectedindex == index ? Colors.black : Colors.grey);
  // }
}
