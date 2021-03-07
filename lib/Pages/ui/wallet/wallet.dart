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
          balancetile(
            'assets/doctorapp/chat/ic_wallet_balance.png',
            'Wallet Balance',
            'Today, 20 March',
            'Top up',
            '8,504',
            '+25% Increase from last week',
            true,
          ),
          balancetile(
            'assets/doctorapp/chat/ic_chart.png',
            'INCOME',
            'This week, 13-20 Feb',
            'View Details',
            '49,206',
            '-8% Decrease from last week',
            false,
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

// Here we design tile for withdraw and income container
  Widget balancetile(
    String imgpath,
    String balancetype,
    String date,
    String accholder,
    String amount,
    String percentageinfo,
    bool isWithdraw,
  ) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 200,
        width: SizeConfig.screebWidth * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    imgpath,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        balancetype,
                        style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                      ),
                      Text(
                        date,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      width: 40,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        accholder,
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    amount,
                    style: TextStyle(fontSize: 30),
                  ),
                  Column(
                    children: [
                      Text(
                        'USD',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text('.99', style: TextStyle(color: Colors.grey))
                    ],
                  ),
                  Expanded(
                    child: Container(
                      width: 70,
                    ),
                  ),
                  isWithdraw
                      ? Container(
                          height: 50,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue),
                          child: Center(
                            child: Text(
                              'Withdrawl',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(percentageinfo, style: TextStyle(color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
