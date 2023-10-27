import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'package:new_bharath_admin/screens/splash_screen.dart';
import 'package:new_bharath_admin/screens/home_screen.dart';
import 'package:new_bharath_admin/screens/student_manage_screen.dart';
import 'package:new_bharath_admin/screens/session_manager_screen.dart';
import 'package:new_bharath_admin/screens/add_student_screen.dart';
import 'package:new_bharath_admin/screens/scan_qr_screen.dart';
import 'package:new_bharath_admin/screens/edit_profile_screen.dart';
import 'package:new_bharath_admin/screens/banner_manager_screen.dart';
import 'package:new_bharath_admin/screens/announcement_manager_screen.dart';
import 'package:new_bharath_admin/screens/notification_manager_screen.dart';
import 'package:new_bharath_admin/screens/other_setup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'New Bharath TDS',
        initialRoute: '/splash',
        debugShowCheckedModeBanner: false, // Remove the DebugCheckerBanner
        theme: ThemeData(
          primarySwatch: Colors.blue, // Define your primary color
          fontFamily: GoogleFonts.nunito().fontFamily, // Use a custom font
        ),
        routes: {
          '/splash': (context) => SplashScreen(),
          '/home': (context) => HomeScreen(),
          '/student_manage': (context) => StudentManageScreen(),
          '/session_manager': (context) => SessionManagerScreen(),
          '/add_student': (context) => AddStudentScreen(),
          '/scan_qr': (context) => ScanQRScreen(),
          '/edit_profile': (context) => EditProfileScreen(),
          '/banner_manager': (context) => BannerManagerScreen(),
          '/announcement_manager': (context) => AnnouncementManagerScreen(),
          '/notification_manager': (context) => NotificationManagerScreen(),
          '/other_setup': (context) => OtherSetupScreen(),
          // Add routes for other screens
        },
      );
    });
  }
}
