import 'package:flutter/material.dart';

class SearchingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 70,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.grey[200],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Search for Podcast....",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.pink,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
