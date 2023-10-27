import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sizer/sizer.dart';

class AScrollWidget extends StatefulWidget {
  final List<String> announcements;
  final Duration scrollDuration;

  AScrollWidget({
    required this.announcements,
    this.scrollDuration = const Duration(seconds: 4), // Adjust scrolling speed
  });

  @override
  _AScrollWidgetState createState() => _AScrollWidgetState();
}

class _AScrollWidgetState extends State<AScrollWidget> {
  late ScrollController _scrollController;
  int currentAnnouncementIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    // Start a timer to automatically scroll announcements
    startAnnouncementScrolling();
  }

  @override
  void dispose() {
    // Dispose of the scroll controller when the widget is removed from the tree.
    _scrollController.dispose();
    currentAnnouncementIndex = 0;
    super.dispose();
  }

  void startAnnouncementScrolling() {
    Timer.periodic(widget.scrollDuration, (timer) {
      setState(() {
        if (currentAnnouncementIndex < widget.announcements.length - 1) {
          currentAnnouncementIndex++;
        } else {
          currentAnnouncementIndex++;
        }
        _scrollController.animateTo(
          currentAnnouncementIndex *
              40.0, // Adjust the item height (e.g., 40.0) according to your UI
          duration: Duration(seconds: 4), // Adjust scrolling speed
          curve: Curves.easeInOut,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      height: 10.h, // Adjust the widget height as needed
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        // Create a loop
        itemBuilder: (context, index) {
          index = index % widget.announcements.length;
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Text(
                widget.announcements[index],
                style: TextStyle(
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
