import 'package:flutter/material.dart';
import 'package:new_bharath_admin/data/dashboard_grid.dart';
import 'package:new_bharath_admin/widgets/dashboard_item_card.dart';
import 'package:sizer/sizer.dart';
import 'package:local_auth/local_auth.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isAuth = false;
  final LocalAuthentication localAuth = LocalAuthentication();
  _SupportState _supportState = _SupportState.unknown;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;
  int _selectedIndex =
      1; // Initialize it with the index of the default selected tab

  @override
  void initState() {
    super.initState();
    localAuth.isDeviceSupported().then(
          (bool isSupported) => setState(() => _supportState = isSupported
              ? _SupportState.supported
              : _SupportState.unsupported),
        );
    // _authenticateWithBiometrics();
    // Implement the authentication method
  }

  Future<void> _authenticateWithBiometrics() async {
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      isAuth = await localAuth.authenticate(
        localizedReason:
            'Scan your fingerprint (or face or whatever) to authenticate',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Authenticating';
      });
    } on Exception catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e}';
      });
      return;
    }
    if (!mounted) {
      return;
    }

    final String message = isAuth ? 'Authorized' : 'Not Authorized';
    setState(() {
      _authorized = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (true) //isAuth
      return Scaffold(
          appBar: AppBar(
            title: Column(
              children: [
                Text("New Bharath Driving School",
                    style: TextStyle(fontSize: 18.0.sp)),
                Text("Proddatur branch", style: TextStyle(fontSize: 14.0.sp)),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  // Handle notification button press
                },
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                // Define your side navigation drawer content here
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(4.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Students",
                                  style: TextStyle(fontSize: 10.0.sp)),
                              Text("60", style: TextStyle(fontSize: 26.0.sp)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4.0.w),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(4.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Sessions",
                                  style: TextStyle(fontSize: 10.0.sp)),
                              Text("6", style: TextStyle(fontSize: 26.0.sp)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4.0.w),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Upcoming Session",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {
                                // Handle View All button press
                              },
                              child: Text("View All"),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.0.w),
                        SessionCard(
                          time: "7:00 AM - 8:00 PM",
                          date: "21/3/2023",
                          members: "4",
                        ),
                      ],
                    )),

                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 items per row
                  ),
                  itemCount: dashboardItems.length,
                  itemBuilder: (context, index) {
                    return DashboardItemCard(dashboardItems[index]);
                  },
                ),
                // Add more SessionCard widgets for different sessions
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue, // Change the selected item color
            unselectedItemColor:
                Colors.grey, // Change the unselected item color
            backgroundColor: Colors.white, // Change the background color
            type: BottomNavigationBarType
                .fixed, // Allows for more than three items
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "Add Student",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: "Dashboard",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Session Manager",
              ),
            ],
            onTap: (int index) {
              // Handle navigation between the different sections
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedFontSize: 14.0, // Customize the font size for selected item
            unselectedFontSize:
                12.0, // Customize the font size for unselected items
            elevation: 10, // Add an elevation to the bar
            selectedIconTheme:
                IconThemeData(size: 30), // Adjust icon size for selected items
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Handle the Floating Action Button press
            },
            child: Icon(Icons.qr_code_scanner_sharp, size: 36),
            backgroundColor: Colors.blue, // Change the button color
            elevation: 5, // Add elevation for a neomorphic effect
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(18), // Customize the button shape
            ),
          ));
    else {
      return Scaffold(
        body: Center(
          child: Text("Please authenticate to access the app" + _authorized),
        ),
      );
    }
  }
}

class SessionCard extends StatelessWidget {
  final String time;
  final String date;
  final String members;

  SessionCard({required this.time, required this.date, required this.members});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.0.w),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(time, style: TextStyle(fontSize: 16.0.sp)),
              Text(date, style: TextStyle(fontSize: 12.0.sp)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(members, style: TextStyle(fontSize: 24.0.sp)),
              Text("members", style: TextStyle(fontSize: 12.0.sp)),
            ],
          ),
        ],
      ),
    );
  }
}

enum _SupportState {
  unknown,
  supported,
  unsupported,
}
