import 'package:flutter/material.dart';
import 'package:new_bharath_tds/widgets/a_scroll_widget.dart';
import 'package:new_bharath_tds/widgets/dashboard_card.dart';
import 'package:new_bharath_tds/widgets/scroll_banner.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> announcements = [
    "Announcement 1: This is the first announcement",
    "Announcement 2: This is the second announcement",
    "Announcement 3: This is the third announcement",
    "Announcement 4: This is the first announcement",
    "Announcement 5: This is the second announcement",
    "Announcement 6: This is the third announcement",
  ];
  List<String> DemoAdImages = [
    "assets/images/demo/DemoAdImage1.jpeg",
    "assets/images/demo/DemoAdImage2.jpeg",
    "assets/images/demo/DemoAdImage3.jpeg",
    "assets/images/demo/DemoAdImage4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: Text("New Bharath TDS"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushNamed(context, '/notifications');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 1.h,
            ),
            ScrollBanner(
              imageList: DemoAdImages,
            ),
            Padding(
              padding: EdgeInsets.all(2.0.w),
              child: Text(
                "Latest News or Announcements",
                style: TextStyle(
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Auto-scrolling and looping announcements
            AScrollWidget(
              announcements: announcements,
            ),

            //Dashboard
            DashboardCard(
              completedSessions: 10,
              daysLeft: 10,
            ),

            Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(2.0.w),
                    child: Text(
                      "About Us",
                      style: TextStyle(
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2.0.w),
                    child: Column(
                      children: [
                        Text(
                          "Phone: 123-456-7890",
                          style: TextStyle(
                            fontSize: 14.0.sp,
                          ),
                        ),
                        Text(
                          "Email: info@newbharathtds.com",
                          style: TextStyle(
                            fontSize: 14.0.sp,
                          ),
                        ),
                        Text(
                          "Address: 123 Main St, City",
                          style: TextStyle(
                            fontSize: 14.0.sp,
                          ),
                        ),
                        // WhatsApp chat button
                        Center(
                          child: Container(
                            width: 200, // Set your desired width
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white, // Background color
                                onPrimary: Colors.green, // Text color
                                side: BorderSide(
                                    width: 2,
                                    color: Colors.green), // Green border
                              ),
                              onPressed: () {
                                // Add logic to open WhatsApp chat
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                        8.0), // Adjust padding as needed
                                    child: Icon(
                                      FaIcon(FontAwesomeIcons.whatsapp)
                                          .icon, // Font Awesome WhatsApp icon
                                      color: Colors.green,
                                      size: 24, // Adjust the size of the icon
                                    ),
                                  ),
                                  Text(
                                    "Chat on WhatsApp",
                                    style: TextStyle(
                                        fontSize:
                                            16), // Adjust text style as needed
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.0.h,
                        ),
                        // Social media icons (Add your icons or widgets here)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FaIcon(FontAwesomeIcons.facebook).icon,
                              color: Colors.blue,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Icon(
                              FaIcon(FontAwesomeIcons.instagram).icon,
                              color: Colors.pink,
                              size: 30,
                            ),
                            // Icon(
                            //   FaIcon(FontAwesomeIcons.twit).icon,
                            //   size: 30,
                            //   color: Colors.blue,
                            // ),
                          ],
                        ),
                        // "Powered by The Bandas Inc." section
                        SizedBox(
                          height: 2.0.h,
                        ),
                        Text(
                          "Powered by The Bandas Inc.",
                          style: TextStyle(
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/schedule_dashboard');
        },
        child: Icon(Icons.dashboard),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              onDetailsPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              accountName: Text("User Name"),
              accountEmail: Text("user@gmail.com"),
              currentAccountPicture: CircleAvatar(),
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text("Upcoming Events"),
              onTap: () {
                Navigator.pushNamed(context, '/upcoming_events');
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text("Terms and Conditions"),
              onTap: () {
                // Add logic to navigate to Terms and Conditions
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
              onTap: () {
                // Add logic to navigate to Help
              },
            ),
            Spacer(),
            ListTile(
              trailing: Icon(Icons.logout),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.red), // Make the text red
              ),
              onTap: () {
                // Add logic to perform logout
              },
            ),
          ],
        ),
      ),
    );
  }
}
