import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:health_app/Pages/ui/my_appts/create_new_aapt.dart';
import 'package:health_app/models/appointment.dart';
import 'package:health_app/size_config.dart';

class MyAppts extends StatefulWidget {
  @override
  _MyApptsState createState() => _MyApptsState();
}

class _MyApptsState extends State<MyAppts> {
  DatePickerController controller = DatePickerController();

  DateTime selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: Icon(Icons.menu),
        title: Column(
          children: [
            Text(
              'Appointments',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '27 March 2017',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Today',
              style: TextStyle(color: Color(0xffFDAD3F), fontSize: 18),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          DatePicker(
            DateTime.now(),
            initialSelectedDate: DateTime.now(),
            selectionColor: Colors.blue,
            selectedTextColor: Colors.white,
            onDateChange: (date) {
              // New date selected
              setState(() {
                selectedValue = date;
              });
            },
          ),
          Container(
            height: 60,
            width: SizeConfig.screebWidth,
            decoration: BoxDecoration(color: Color(0xffEFEFF4)),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10),
              child: Row(
                children: [
                  Text(
                    'MORNING (2)',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    '8:30 AM - 12:00 PM',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: appointmentList.length,
              itemBuilder: (context, index) {
                return appointmentime(
                  appointment: appointmentList[index],
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateNewMeeting()));
          });
        },
        backgroundColor: Colors.orange,
        child: Image.asset('assets/doctorapp/chat/add.png'),
      ),
    );
  }

  Widget appointmentime({@required Appointment appointment}) {
    return Container(
      height: 100,
      width: SizeConfig.screebWidth,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 8, 20),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  appointment.time,
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
                Text(
                  appointment.timeFormat,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 80,
              width: 1,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            ),
            Stack(
              children: [
                Image.asset(appointment.imgPath),
                appointment.isOnline != null && appointment.isOnline == true
                    ? Positioned(
                        bottom: 2,
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
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  appointment.name,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(appointment.appointmentType),
                    Text(
                      appointment.appointmentTitle,
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
