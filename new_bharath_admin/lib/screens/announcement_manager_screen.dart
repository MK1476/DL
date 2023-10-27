import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnnouncementManagerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Announcement Manager"),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Manage Announcements",
              style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.0.h),
            AnnouncementTile(
              title: "Important Update",
              description: "Please read for important information.",
              onTap: () {
                // Add logic to edit or delete this announcement
              },
            ),
            AnnouncementTile(
              title: "Event Reminder",
              description: "Don't forget our upcoming event!",
              onTap: () {
                // Add logic to edit or delete this announcement
              },
            ),
            // Add more AnnouncementTiles as needed
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add logic to add a new announcement
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class AnnouncementTile extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onTap;

  AnnouncementTile(
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
          icon: Icon(Icons.edit),
          onPressed: onTap,
        ),
      ),
    );
  }
}
