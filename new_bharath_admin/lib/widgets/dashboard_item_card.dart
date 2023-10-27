import 'package:flutter/material.dart';

class DashboardItemCard extends StatelessWidget {
  final DashboardItem item;

  DashboardItemCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.blue, // Customize the border color
          width: 2.0, // Border width
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            item.icon,
            size: 48.0,
            color: Colors.blue, // Customize the icon color
          ),
          SizedBox(height: 8.0),
          Text(
            item.title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class DashboardItem {
  final String title;
  final IconData icon;

  DashboardItem(this.title, this.icon);
}
