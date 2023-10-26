import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set your desired background color
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor:
            Colors.blue, // Match the app bar with the background color
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(5.0.w), // Use sizer to define padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome to New Bharath TDS",
                style: TextStyle(
                  fontSize: 15.0.sp, // Use sizer to define text size
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Set text color
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 2.0.h), // Use sizer to define height
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Your Phone Number",
                  prefixIcon: Icon(Icons.phone),
                  fillColor: Colors.white, // Set input field background color
                  filled: true,
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 3.0.h), // Use sizer to define height
              ElevatedButton(
                onPressed: () {
                  // Add logic here to process the phone number
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 15.0.sp, // Use sizer to define button text size
                    color: Colors.blue, // Button text color
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Button background color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
