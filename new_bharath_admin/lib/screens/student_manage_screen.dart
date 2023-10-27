import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StudentManageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text("Student Management"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(4.0.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          BatchList(),
        ],
      ),
    );
  }
}

class BatchList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sample batch data
    final List<Batch> batches = [
      Batch(time: "6:00 AM - 7:00 AM", students: ["John", "Alice", "Bob"]),
      Batch(time: "7:00 AM - 8:00 AM", students: ["Sarah", "Mike", "Eve"]),
      Batch(time: "8:00 AM - 9:00 AM", students: ["Tom", "Olivia"]),
      Batch(time: "9:00 AM - 10:00 AM", students: ["Lucy", "Jake", "Grace"]),
      Batch(time: "10:00 AM - 11:00 AM", students: ["Liam", "Mia"]),
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: batches.length,
        itemBuilder: (context, index) {
          return BatchTile(batch: batches[index]);
        },
      ),
    );
  }
}

class BatchTile extends StatelessWidget {
  final Batch batch;

  BatchTile({required this.batch});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(batch.time),
      subtitle: Text("${batch.students.length} students"),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        // Handle batch tile click, navigate to students in this batch
      },
    );
  }
}

class Batch {
  final String time;
  final List<String> students;

  Batch({required this.time, required this.students});
}

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          home: StudentManageScreen(),
          theme: ThemeData.light(),
        );
      },
    ),
  );
}
