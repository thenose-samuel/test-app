import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/src/controllers/scheduleCreationController.dart';
import 'package:get/get.dart';
import 'package:test_app/src/elements/datePicker.dart';
import 'package:test_app/src/elements/eventTypeButton.dart';
import 'package:test_app/src/elements/timePicker.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScheduleCreationController controller =
      Get.find<ScheduleCreationController>();
  final eventTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          child: Text('Click me'),
          onPressed: () {
            showSheet();
          },
        ),
      ),
    );
  }

  Future showSheet() {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))),
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.all(Get.width * 0.04),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TopSection(),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Container(
                  width: Get.width * 0.9,
                  height: Get.height * 0.09,
                  child: TextField(
                    controller: eventTitleController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter title here...',
                    ),
                    onChanged: (_) {
                      controller.eventTitle = eventTitleController.text;
                    },
                  ),
                ),
                Row(
                  children: [
                    //TODO: add calender asset
                    Icon(Icons.date_range_rounded),
                    DatePicker(),
                    TimePicker(),
                  ],
                ),
                Row(
                  children: [
                    //TODO: add calender asset
                    Icon(Icons.date_range_rounded),
                    DatePicker(),
                    TimePicker(),
                  ],
                ),
                Row(
                  children: [
                    //TODO: Add asset
                    Icon(Icons.image),
                    MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'Add Image',
                        style: TextStyle(
                          color: Color(0xFFAEAEAE),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    //TODO: Add asset
                    Icon(Icons.image),
                    MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'Add Image',
                        style: TextStyle(
                          color: Color(0xFFAEAEAE),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    //TODO: Add asset
                    Icon(Icons.image),
                    MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'Add Image',
                        style: TextStyle(
                          color: Color(0xFFAEAEAE),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).viewInsets.bottom,
                // ),
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'More Options',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(Get.width * 0.35,Get.width * 0.05,Get.width * 0.35,Get.width * 0.05),
                        child: const Text(
                          'POST',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0))),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}

class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          minRadius: Get.width * 0.075,
          //TODO: Change background image to current profile image
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1643924023026-c745844a98ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60'), //User initials
        ),
        SizedBox(
          width: Get.width * 0.04,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TODO: Change title to current user profile name
            Text(
              'Samuel Khongthaw',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Row(
              children: [
                EventTypeButton(),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                EventTypeButton()
              ],
            ),
          ],
        ),
      ],
    );
  }
}
