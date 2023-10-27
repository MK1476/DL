import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddStudentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Student"),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.0.w),
        child: Column(
          children: [
            StudentForm(),
          ],
        ),
      ),
    );
  }
}

class StudentForm extends StatefulWidget {
  @override
  _StudentFormState createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController rollNumberController = TextEditingController();
  final TextEditingController batchTimeController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    rollNumberController.dispose();
    batchTimeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: nameController,
          decoration: InputDecoration(labelText: "Name"),
        ),
        TextFormField(
          controller: rollNumberController,
          decoration: InputDecoration(labelText: "Roll Number"),
        ),
        TextFormField(
          controller: batchTimeController,
          decoration: InputDecoration(labelText: "Batch Time"),
        ),
        SizedBox(height: 2.0.h),
        ElevatedButton(
          onPressed: () {
            // Add logic to add the student with entered details
            final name = nameController.text;
            final rollNumber = rollNumberController.text;
            final batchTime = batchTimeController.text;

            // Do something with the student details (e.g., add to a list, database, etc.)

            // Clear the text fields
            nameController.clear();
            rollNumberController.clear();
            batchTimeController.clear();
          },
          child: Text("Add Student"),
        ),
      ],
    );
  }
}

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          home: AddStudentScreen(),
          theme: ThemeData.light(),
        );
      },
    ),
  );
}
