import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:health_app/models/inboxmodel.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xffF7F8F9)),
        elevation: 0,
        backgroundColor: Color(0xffF7F8F9),
        leading: Icon(Icons.ac_unit),
        title: Text(
          'All Messages',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Image.asset(
            'assets/doctorapp/chat/search.png',
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: inboxList.length,
                itemBuilder: (context, index) {
                  return messagemodel(
                    inboxList[index],
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget messagemodel(Inbox inbox) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        top: 10,
      ),
      child: Slidable(
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
        child: Container(
          height: 90,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 25,
                ),
                child: Container(
                    height: 50,
                    width: 60,
                    child: Stack(
                      children: [
                        Image.asset(inbox.imgpath),
                        inbox.isonline != null && inbox.isonline == true
                            ? Positioned(
                                bottom: 3,
                                right: 0,
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 8,
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, top: 10, right: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      inbox.name,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      inbox.messageTitle,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text(inbox.time),
              ),
            ],
          ),
        ),
        secondaryActions: <Widget>[
          IconSlideAction(
            caption: 'Video',
            color: Colors.red,
            icon: Icons.video_call,
            onTap: () {},
          ),
          IconSlideAction(
            caption: 'Phone',
            color: Colors.orange,
            icon: Icons.phone,
            onTap: () {},
          ),
          IconSlideAction(
            caption: 'More',
            color: Colors.green,
            icon: Icons.more_horiz,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
