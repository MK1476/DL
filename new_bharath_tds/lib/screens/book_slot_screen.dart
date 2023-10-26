import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookSlotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book a Slot"),
        backgroundColor: Colors.blue, // Customize the app bar color
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Select a Slot to Book",
              style: TextStyle(
                fontSize: 15.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.0.h),
            SlotCard(
              date: "October 30, 2023",
              time: "10:00 AM - 12:00 PM",
            ),
            SlotCard(
              date: "November 5, 2023",
              time: "2:00 PM - 4:00 PM",
            ),
            // Add more slot cards as needed
          ],
        ),
      ),
    );
  }
}

class SlotCard extends StatelessWidget {
  final String date;
  final String time;

  SlotCard({required this.date, required this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.only(bottom: 2.0.h),
      child: ListTile(
        title: Text(
          "Date: $date",
          style: TextStyle(
            fontSize: 14.0.sp,
          ),
        ),
        subtitle: Text(
          "Time: $time",
          style: TextStyle(
            fontSize: 12.0.sp,
          ),
        ),
        trailing: ElevatedButton(
          onPressed: () {
            // Add logic to confirm slot booking
          },
          child: Text("Book Slot"),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue, // Customize the button color
          ),
        ),
      ),
    );
  }
}
