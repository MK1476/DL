import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String name = "John Doe";
  String email = "johndoe@example.com";
  String phone = "123-456-7890";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Name"),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            SizedBox(height: 2.0.h),
            TextField(
              decoration: InputDecoration(labelText: "Email"),
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            SizedBox(height: 2.0.h),
            TextField(
              decoration: InputDecoration(labelText: "Phone"),
              onChanged: (value) {
                setState(() {
                  phone = value;
                });
              },
            ),
            SizedBox(height: 2.0.h),
            ElevatedButton(
              onPressed: () {
                // Add logic to save the updated profile
              },
              child: Text("Save Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
