import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ScheduleDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule Dashboard"),
        backgroundColor: Colors.blue, // Customize the app bar color
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0.w),
        child: ListView(
          children: <Widget>[
            ClassSlot(
              date: "October 25, 2023",
              time: "7:00 PM - 8:00 PM",
              isBooked: false,
            ),
            ClassSlot(
              date: "October 27, 2023",
              time: "9:00 AM - 10:00 AM",
              isBooked: true,
            ),
            // Add more class slots as needed
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add logic to book a slot
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue, // Customize the FAB background color
      ),
    );
  }
}

class ClassSlot extends StatelessWidget {
  final String date;
  final String time;
  final bool isBooked;

  ClassSlot({required this.date, required this.time, required this.isBooked});

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
        trailing: isBooked
            ? Icon(Icons.check,
                color: Colors.green) // Show a checkmark if booked
            : ElevatedButton(
                onPressed: () {
                  // Add logic to book this slot
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
