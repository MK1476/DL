import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.blue, // Customize the app bar color
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 10.0.w, // Use sizer for defining size
              backgroundImage: AssetImage(
                  'assets/profile_image.png'), // Set user's profile image
            ),
            SizedBox(height: 2.0.h),
            Text(
              "User Name",
              style: TextStyle(
                fontSize: 18.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 1.0.h),
            Text(
              "Phone: 123-456-7890",
              style: TextStyle(
                fontSize: 14.0.sp,
              ),
            ),
            SizedBox(height: 2.0.h),
            ElevatedButton(
              onPressed: () {
                // Add logic to log out the user
              },
              child: Text("Log Out"),
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Customize the button color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
