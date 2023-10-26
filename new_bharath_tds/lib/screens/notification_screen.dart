import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Colors.blue, // Customize the app bar color
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0.w),
        child: ListView(
          children: <Widget>[
            NotificationItem(
              title: "Important Update",
              message:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            ),
            NotificationItem(
              title: "New Event",
              message: "Join us for our upcoming driving safety seminar.",
            ),
            NotificationItem(
              title: "Schedule Change",
              message:
                  "Your class on 25/10/23 has been rescheduled to 27/10/23.",
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String message;

  NotificationItem({required this.title, required this.message});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.only(bottom: 2.0.h),
      child: Padding(
        padding: EdgeInsets.all(3.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 15.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 1.0.h),
            Text(
              message,
              style: TextStyle(
                fontSize: 12.0.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
