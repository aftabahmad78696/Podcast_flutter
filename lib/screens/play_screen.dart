import 'package:flutter/material.dart';
import 'package:flutter_podcast/widgets/play/play_icons_tab.dart';
import 'package:flutter_podcast/widgets/play/play_music.dart';
import 'package:flutter_podcast/widgets/play/play_podcast_detail.dart';

class PlayScreen extends StatelessWidget {
  final Map<String, String> model;
  const PlayScreen({required this.model});
  @override
  Widget build(BuildContext context) {
    print("Hi from PlayScreen ${model["name"]}");
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Icon(Icons.clear_all, size: 35, color: Colors.black),
          Icon(Icons.more_vert, size: 35, color: Colors.black),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            PlayPodcast(model: model),
            SizedBox(
              height: 20,
            ),
            PlayIconsTab(),
            SizedBox(height: 20),
            PlayMusic(),
          ],
        ),
      ),
    );
  }
}
