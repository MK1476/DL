import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class UpcomingEventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upcoming Events"),
        backgroundColor: Colors.blue, // Customize the app bar color
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0.w),
        child: ListView(
          children: <Widget>[
            EventItem(
              title: "Driving Safety Seminar",
              date: "October 30, 2023",
              time: "10:00 AM - 12:00 PM",
            ),
            EventItem(
              title: "Practice Driving Session",
              date: "November 5, 2023",
              time: "2:00 PM - 4:00 PM",
            ),
            EventItem(
              title: "License Exam Prep",
              date: "November 15, 2023",
              time: "9:00 AM - 11:00 AM",
            ),
          ],
        ),
      ),
    );
  }
}

class EventItem extends StatelessWidget {
  final String title;
  final String date;
  final String time;

  EventItem({required this.title, required this.date, required this.time});

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
              "Date: $date",
              style: TextStyle(
                fontSize: 12.0.sp,
              ),
            ),
            Text(
              "Time: $time",
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
