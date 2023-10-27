import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SessionManagerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Session Manager"),
      ),
      body: Column(
        children: [
          TodaysSessionsList(),
          SizedBox(height: 2.0.h),
          ElevatedButton(
            onPressed: () {
              // Handle setting up tomorrow's sessions
            },
            child: Text("Setup Tomorrow's Sessions"),
          ),
        ],
      ),
    );
  }
}

class TodaysSessionsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sample data for today's sessions
    final List<Session> sessions = [
      Session(
        time: "6:00 AM - 7:00 AM",
        bookedStudents: ["John", "Alice", "Bob"],
      ),
      Session(
        time: "7:00 AM - 8:00 AM",
        bookedStudents: ["Sarah", "Mike", "Eve"],
      ),
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: sessions.length,
        itemBuilder: (context, index) {
          return SessionTile(session: sessions[index]);
        },
      ),
    );
  }
}

class SessionTile extends StatelessWidget {
  final Session session;

  SessionTile({required this.session});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(session.time),
      subtitle: Text("Booked Students: ${session.bookedStudents.join(', ')}"),
    );
  }
}

class Session {
  final String time;
  final List<String> bookedStudents;

  Session({required this.time, required this.bookedStudents});
}
