import 'package:flutter/material.dart';
import 'package:health_app/models/walletmodel.dart';
import 'package:health_app/size_config.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue,
            child: Image.asset('assets/doctorapp/chat/money_filled.png'),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.orange,
            child: Image.asset('assets/doctorapp/chat/money_filled.png'),
          ),
        ],
      ),
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.ac_unit),
        centerTitle: true,
        title: Text(
          'My Wallet',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  child: Image.asset('assets/nortification.png'),
                ),
                Positioned(
                  top: 13,
                  left: 15,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.red),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 200,
              width: SizeConfig.screebWidth * 0.90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                            'assets/doctorapp/chat/ic_wallet_balance.png'),
                        Column(
                          children: [
                            Text(
                              'Wallet Balance',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 17),
                            ),
                            Text(
                              'Today, 20 March',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Container(
                          height: 2,
                          width: 40,
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.yellow)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Top Up',
                              style: TextStyle(color: Colors.yellow),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '\$',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '8,504',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'USD',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                            Text(
                              '.96',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                          ],
                        ),
                        Image.asset('assets/doctorapp/chat/ic_increase.png'),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(90, 10, 10, 10),
                          child: Container(
                            height: 35,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: Text(
                                'Withdraw',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      '+25% Increase from last week',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 200,
              width: SizeConfig.screebWidth * 0.90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/doctorapp/chat/ic_chart.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'INCOME',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black),
                            ),
                            Text(
                              'This week, 13-20 feb',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Container(
                          height: 2,
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.yellow)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'View Details',
                              style: TextStyle(color: Colors.yellow),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '\$',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '49,206',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'USD',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                            Text(
                              '.00',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                          ],
                        ),
                        Image.asset('assets/doctorapp/chat/ic_derease.png'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      '-8% Decrease from last week',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('RECENT ACTIVITIES'),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Expanded(
            child: Container(
              height: 700,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: walletList.length,
                        itemBuilder: (context, index) {
                          return contactstile(
                            walletList[index],
                          );
                        }),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget contactstile(Wallets wallets) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: 70,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Stack(
                  children: [
                    Image.asset(wallets.imgpath),
                    wallets.isOnline != null && wallets.isOnline == true
                        ? Positioned(
                            bottom: 3,
                            right: -3,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 10,
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,
                              ),
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      wallets.name,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      wallets.messageTitle,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(),
              Container(),
              Column(
                children: [
                  Text(wallets.price),
                  SizedBox(
                    height: 4,
                  ),
                  Text(wallets.time, style: TextStyle(color: Colors.grey)),
                ],
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
