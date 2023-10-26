import 'package:flutter/material.dart';
import 'package:new_bharath_tds/screens/splash_screen.dart';
import 'package:new_bharath_tds/screens/login_screen.dart';
import 'package:new_bharath_tds/screens/otp_screen.dart';
import 'package:new_bharath_tds/screens/home_screen.dart';
import 'package:new_bharath_tds/screens/notification_screen.dart';
import 'package:new_bharath_tds/screens/upcoming_events_screen.dart';
import 'package:new_bharath_tds/screens/schedule_dashboard_screen.dart';
import 'package:new_bharath_tds/screens/profile_screen.dart';
import 'package:new_bharath_tds/screens/book_slot_screen.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart'; // Import Google Fonts for custom fonts

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'New Bharath TDS',
          initialRoute: '/splash',
          theme: ThemeData(
            primarySwatch: Colors.blue, // Define your primary color
            fontFamily: GoogleFonts.nunito().fontFamily, // Use a custom font
          ),
          debugShowCheckedModeBanner: false, // Remove the DebugCheckerBanner
          routes: {
            '/splash': (context) => SplashScreen(),
            '/login': (context) => LoginScreen(),
            '/otp': (context) => OtpEntryScreen(),
            '/home': (context) => HomeScreen(),
            '/notifications': (context) => NotificationScreen(),
            '/upcoming_events': (context) => UpcomingEventsScreen(),
            '/schedule_dashboard': (context) => ScheduleDashboardScreen(),
            '/profile': (context) => ProfileScreen(),
            '/book_slot': (context) => BookSlotScreen(),
          },
        );
      },
    );
  }
}
