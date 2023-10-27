import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookSlotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Book a Slot"),
          backgroundColor: Colors.blue, // Customize the app bar color
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(5.0.w),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(2.0.w),
                  child: Text(
                    "Select a Slot to Book",
                    style: TextStyle(
                      fontSize: 15.0.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 2.0.h),
                SlotGrid(
                  date: "October 30, 2023",
                  slotTimes: [
                    "10:00 AM - 12:00 PM",
                    "2:00 PM - 4:00 PM",
                    "10:00 AM - 12:00 PM",
                    "2:00 PM - 4:00 PM",
                    "10:00 AM - 12:00 PM",
                    "2:00 PM - 4:00 PM",
                    // Add more slot times as needed
                  ],
                ),
                // Add more SlotGrid widgets for different dates
              ],
            ),
          ),
        ));
  }
}

class SlotGrid extends StatefulWidget {
  final String date;
  final List<String> slotTimes;

  SlotGrid({required this.date, required this.slotTimes});

  @override
  _SlotGridState createState() => _SlotGridState();
}

class _SlotGridState extends State<SlotGrid> {
  int selectedSlotIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          " ${widget.date}",
          style: TextStyle(
            fontSize: 14.0.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 4,
            crossAxisSpacing: 5.0.w,
            mainAxisSpacing: 2.0.h,
          ),
          itemCount: widget.slotTimes.length,
          itemBuilder: (context, index) {
            return SlotCard(
              slotTime: widget.slotTimes[index],
              isSelected: index == selectedSlotIndex,
              onSelected: () {
                setState(() {
                  selectedSlotIndex = index;
                });
              },
            );
          },
        ),
        SizedBox(height: 3.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 168, 168, 168), // Border color
              width: 2.0, // Border width
            ),
            borderRadius: BorderRadius.circular(10.0), // Border radius
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter Reason",
              border: InputBorder.none, // Remove the default input border
              focusedBorder: InputBorder.none, // Remove the border when focused
            ),
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: ElevatedButton(
            onPressed: () {
              // Add logic to confirm slot booking
              if (selectedSlotIndex != -1) {
                final selectedSlot = widget.slotTimes[selectedSlotIndex];
                final snackBar = SnackBar(
                  content: Text(
                      "Slot on ${widget.date} at $selectedSlot is booked!"),
                  backgroundColor:
                      Colors.green, // Background color of the snackbar
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            child: Text(
              "Book Slot",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16), // Button text color
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue, // Button background color

              padding: EdgeInsets.symmetric(
                  horizontal: 33.0.w,
                  vertical: 16.0), // Adjust padding for width and height
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Button border radius
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SlotCard extends StatefulWidget {
  final String slotTime;
  final bool isSelected;
  final VoidCallback onSelected;

  SlotCard({
    required this.slotTime,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  _SlotCardState createState() => _SlotCardState();
}

class _SlotCardState extends State<SlotCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          widget.onSelected();
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: widget.isSelected
                  ? Colors.green
                  : Color.fromARGB(181, 202, 202, 202),
              width: 2.0, // Border width
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Center(
            child: Text(
              "${widget.slotTime}",
              style: TextStyle(
                fontSize: 12.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}
