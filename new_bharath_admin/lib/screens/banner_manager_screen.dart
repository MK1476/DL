import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BannerManagerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Banner Manager"),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Manage Banners",
              style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.0.h),
            BannerTile(
              imageUrl: "https://example.com/banner1.jpg",
              onTap: () {
                // Add logic to edit or delete this banner
              },
            ),
            BannerTile(
              imageUrl: "https://example.com/banner2.jpg",
              onTap: () {
                // Add logic to edit or delete this banner
              },
            ),
            // Add more BannerTiles as needed
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add logic to add a new banner
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class BannerTile extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;

  BannerTile({required this.imageUrl, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.only(bottom: 2.0.h),
      child: ListTile(
        leading: Image.network(imageUrl),
        title: Text("Banner Title"),
        subtitle: Text("Subtitle or Description"),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: onTap,
        ),
      ),
    );
  }
}
