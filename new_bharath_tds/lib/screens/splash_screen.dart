import 'package:flutter/material.dart';
import 'package:new_bharath_tds/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Animate the text to fully opaque over 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        opacity = 1.0;
      });

      // After 2 seconds, navigate to the LoginScreen
      Future.delayed(Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          duration: Duration(seconds: 2),
          opacity: opacity,
          child: Text(
            "New Bharath",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
