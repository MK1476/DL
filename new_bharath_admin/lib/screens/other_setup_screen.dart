import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OtherSetupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other Setup"),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Other Setup Options",
              style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.0.h),
            SetupOptionTile(
              title: "App Settings",
              onTap: () {
                // Add logic to navigate to app settings
              },
            ),
            SetupOptionTile(
              title: "Profile Settings",
              onTap: () {
                // Add logic to navigate to profile settings
              },
            ),
            SetupOptionTile(
              title: "Privacy Settings",
              onTap: () {
                // Add logic to navigate to privacy settings
              },
            ),
            // Add more SetupOptionTiles as needed
          ],
        ),
      ),
    );
  }
}

class SetupOptionTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  SetupOptionTile({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.only(bottom: 2.0.h),
      child: ListTile(
        title: Text(title),
        onTap: onTap,
      ),
    );
  }
}
