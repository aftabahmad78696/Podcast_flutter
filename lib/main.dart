import 'package:flutter/material.dart';
import 'package:flutter_podcast/screens/bnb.dart';
import 'package:flutter_podcast/screens/home_page.dart';

void main() {
  runApp(PodcastApp());
}

class PodcastApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Podcast App",
      home: BNB(),
      debugShowCheckedModeBanner: false,
    );
  }
}
