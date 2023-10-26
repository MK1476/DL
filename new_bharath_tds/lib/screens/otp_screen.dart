import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OtpEntryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Enter OTP"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(5.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Enter the OTP sent to your phone",
                style: TextStyle(
                  fontSize: 15.0.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 2.0.h),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter OTP",
                  prefixIcon: Icon(Icons.lock),
                  fillColor: Colors.white,
                  filled: true,
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 3.0.h),
              ElevatedButton(
                onPressed: () {
                  // Add logic here to verify OTP
                },
                child: Text(
                  "Verify OTP",
                  style: TextStyle(
                    fontSize: 15.0.sp,
                    color: Colors.blue,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
