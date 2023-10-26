import 'package:flutter/material.dart';
import 'package:new_bharath_tds/screens/upcoming_events_screen.dart';
import 'package:sizer/sizer.dart';

class DashboardCard extends StatelessWidget {
  final int completedSessions;
  final int daysLeft;

  DashboardCard({
    required this.completedSessions,
    required this.daysLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5.0.w),
      elevation: 4.0,
      borderOnForeground: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      shadowColor: Color.fromARGB(255, 242, 242, 242),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.sp),
        child: Column(
          children: [
            Text(
              'MK\'s Dashboard',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            // Progress Indicator
            Container(
              padding: EdgeInsets.all(5.0.w),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 12.0
                            .h, // Set a fixed width for the circular progress indicator
                        height: 12.0
                            .h, // Set a fixed height for the circular progress indicator
                        child: CircularProgressIndicator(
                          value: completedSessions / 20,
                          backgroundColor: Color.fromARGB(255, 218, 218, 218),
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.green),
                          strokeWidth: 8.0,
                          strokeCap: StrokeCap.round,
                        ),
                      ),
                      Text(
                        '10 / 20',
                        style: TextStyle(
                            fontSize:
                                3.0.h, // Set a custom font size for the '10'
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ],
                  ),
                  SizedBox(
                      width: 7.0
                          .w), // Add spacing between the circular indicator and text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Days Left: $daysLeft',
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        'Joining Date: 31/12/2023',
                        style: TextStyle(fontSize: 11.0.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Divider(
                color: Color.fromARGB(255, 218, 218, 218),
                thickness: 1.8,
              ),
            ),

            // Upcoming Events
            Container(
              padding: EdgeInsets.all(3.0.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Upcoming Events',
                        style: TextStyle(
                            fontSize: 16.0.sp, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          // Navigate to see all events
                        },
                        child: Text('See All'),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.0.h),
                  EventItem(
                    title: "Driving Safety Seminar",
                    date: "October 30, 2023",
                    time: "10:00 AM - 12:00 PM",
                  ),
                  // Show upcoming events here
                  // ...
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                    child: Divider(
                      color: Color.fromARGB(255, 225, 225, 225),
                      thickness: 1.8,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Book a slot for tomorrow
                    },
                    child: Text('Book Slot for Tomorrow'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
