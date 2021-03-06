import 'package:flutter/material.dart';
import 'package:health_app/Pages/ui/my_appts/my_appts.dart';

class CreateNewMeeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => MyAppts()));
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Add New Client',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Save',
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: Image.asset(
                      'assets/doctorapp/chat/chat1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(hintText: 'First Name'),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 20,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[350],
            ),
            detail('Date & Time', '12 March 2018, 10:45 AM'),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Divider(color: Colors.grey, height: 1),
            ),
            detail('Email ID', 'amily_waston@gmail.com'),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Divider(color: Colors.grey, height: 1),
            ),
            detail('Gender', 'Female'),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Divider(color: Colors.grey, height: 1),
            ),
            detail('Date of Birth', '12 Jan 1983'),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Divider(color: Colors.grey, height: 1),
            ),
            detail('Age', '+36 yrs'),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Divider(color: Colors.grey, height: 1),
            ),
            detail('Blood Group', 'AB+'),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Divider(color: Colors.grey, height: 1),
            ),
            detail('Emergency Contact', '801-555-1234'),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Divider(color: Colors.grey, height: 1),
            ),
            detail('Address', 'D-28/7, Friends Colony, New Delhi'),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Divider(color: Colors.grey, height: 1),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Image.asset('assets/doctorapp/chat/ic_add_field.png'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Add more',
                    style: TextStyle(color: Colors.blue[900]),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget detail(String rawdata, String rawdatafill) {
    return Container(
      width: double.infinity,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 8, 12, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              rawdata,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(rawdatafill,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                    color: Colors.grey[900])),
          ],
        ),
      ),
    );
  }
}
