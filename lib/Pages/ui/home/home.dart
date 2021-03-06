import 'package:flutter/material.dart';
import 'package:health_app/size_config.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.ac_unit,
          color: Colors.white,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              height: 30,
              width: 30,
              child: Stack(
                children: [
                  Positioned(
                    top: 15,
                    child: Image(
                      image: AssetImage(
                          'assets/doctorapp/home/appointment_reminders.png'),
                    ),
                  ),
                  Positioned(
                    top: 17,
                    left: 13,
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
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: SizeConfig.screebWidth,
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/doctorapp/home/Doctor-female(Starter).jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white10,
                            Colors.black54.withOpacity(0.4),
                          ]),
                    ),
                  ),
                ),
                Positioned(
                    top: 180,
                    left: 150,
                    child: (Row(
                      children: [
                        dots(),
                        SizedBox(
                          width: 5,
                        ),
                        dots(),
                        SizedBox(
                          width: 5,
                        ),
                        dots1(),
                        SizedBox(
                          width: 5,
                        ),
                        dots(),
                        SizedBox(
                          width: 5,
                        ),
                        dots(),
                        SizedBox(
                          width: 5,
                        ),
                        dots(),
                      ],
                    )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widgetinrow("assets/doctorapp/home/patient_record.png",
                        "Patient Recod"),
                    widgetinrow(
                        'assets/doctorapp/home/hospitals.png', 'Hospital'),
                    widgetinrow(
                        'assets/doctorapp/home/ehr_files.png', 'EHR Files'),
                    widgetinrow(
                        'assets/doctorapp/home/create_post.png', 'Post'),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TOP ARTICLES',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                Text(
                  'View all >',
                  style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  homecontainerinbottom(
                      'assets/doctorapp/home/bread-4642686_640.jpg',
                      'Dietitian/Nutritionist',
                      '5 Nutrition Strategies \nfor thisExam-\nination Season!',
                      'Ms. Ranjani Raman'),
                  Divider(
                    color: Colors.grey,
                    height: 1,
                  ),
                  homecontainerinbottom(
                      'assets/doctorapp/home/hand-5816640_640.jpg',
                      'Psychologist',
                      'Is Your Weight Making You\n Depressed?',
                      'Ms. Damini Grover'),
                  Divider(
                    color: Colors.grey,
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget widgetinrow(String imagedata, String textdata) {
    return Container(
      width: 100,
      height: 100,
      child: Column(
        children: [
          Image.asset(imagedata),
          SizedBox(
            height: 5,
          ),
          Text(textdata),
        ],
      ),
    );
  }

  Container dots() {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white),
    );
  }

  Container dots1() {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.green),
    );
  }

  Widget homecontainerinbottom(
      String containerimgdata, String data1, String data2, String data3) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                containerimgdata,
                width: 200,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data1,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  data2,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  maxLines: 4,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  data3,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
