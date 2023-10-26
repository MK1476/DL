import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Bharath TDS"),
        backgroundColor: Colors.blue, // Customize the app bar color
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(5.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome to New Bharath TDS",
                style: TextStyle(
                  fontSize: 15.0.sp,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 2.0.h),
              Text(
                "Latest News",
                style: TextStyle(
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                style: TextStyle(
                  fontSize: 12.0.sp,
                ),
              ),
              SizedBox(height: 2.0.h),
              Text(
                "Contact Details",
                style: TextStyle(
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Phone: 123-456-7890\nEmail: info@newbharathtds.com\nAddress: 123 Main St, City",
                style: TextStyle(
                  fontSize: 12.0.sp,
                ),
              ),
              SizedBox(height: 2.0.h),
              Text(
                "Connect with Us",
                style: TextStyle(
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.facebook),
                    onPressed: () {
                      // Add a link to your Facebook page
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.twelve_mp),
                    onPressed: () {
                      // Add a link to your Twitter profile
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.inbox),
                    onPressed: () {
                      // Add a link to your Instagram account
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
