import 'dart:async';

import 'package:flutter/material.dart';

class ScrollBanner extends StatefulWidget {
  final List<String> imageList;

  ScrollBanner({required this.imageList});
  @override
  _ScrollBannerState createState() => _ScrollBannerState();
}

class _ScrollBannerState extends State<ScrollBanner> {
  // Your properties and methods for the scroll banner widget go here

  late PageController _controller; // Add PageController
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();

    _controller = PageController();

    startAutoScroll();
    // Initialize PageController
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of PageController when done
    super.dispose();
  }

  void startAutoScroll() {
    Timer.periodic(Duration(seconds: 10), (timer) {
      if (!_controller.hasClients) {
        // Don't proceed if the controller is not attached
        return;
      }

      // Calculate the next page by adding 1 to it
      int nextPage = _currentPage + 1;

      _controller.animateToPage(
        nextPage,
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> DemoAdImages = widget.imageList;
    // Your widget structure goes here
    return AspectRatio(
      aspectRatio: 2,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _controller,
            itemBuilder: (context, index) {
              int adjustedIndex = (index % DemoAdImages.length).toInt();
              index = adjustedIndex;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    child: Image.asset(
                      DemoAdImages[
                          adjustedIndex], //C:\Code\Project MK\DL\new_bharath_tds\assets\images\demo\DemoAdImage1.jpeg
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
          Container(
            height: 20,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                DemoAdImages.length < 6 ? DemoAdImages.length : 6,
                (int index) => _buildDots(
                  DemoAdImages: DemoAdImages,
                  index: index,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // Add your _buildDots method and other properties/methods as needed

  AnimatedContainer _buildDots({
    int? index,
    DemoAdImages,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: _currentPage % DemoAdImages.length == index
            ? Color.fromARGB(208, 255, 255, 255)
            : Color.fromRGBO(100, 100, 96, 0.54),
      ),
      margin: const EdgeInsets.only(right: 3),
      height: 6,
      curve: Curves.easeIn,
      width: _currentPage % DemoAdImages.length == index ? 18 : 9,
    );
  }
}
