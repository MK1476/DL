import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ScanQRScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan QR"),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add logic to open the QR code scanner
                },
                child: Text("Scan QR Code"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
