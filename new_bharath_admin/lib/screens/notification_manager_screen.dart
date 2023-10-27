import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotificationManagerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification Manager"),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Manage Notifications",
              style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.0.h),
            NotificationTile(
              title: "New Announcement",
              description: "A new announcement has been posted.",
              onTap: () {
                // Add logic to view or dismiss this notification
              },
            ),
            NotificationTile(
              title: "Event Reminder",
              description: "Don't forget our upcoming event!",
              onTap: () {
                // Add logic to view or dismiss this notification
              },
            ),
            // Add more NotificationTiles as needed
          ],
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onTap;

  NotificationTile(
      {required this.title, required this.description, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.only(bottom: 2.0.h),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle),
          onPressed: onTap,
        ),
      ),
    );
  }
}
