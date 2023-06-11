import 'package:flutter/material.dart';
import 'package:flutter_podcast/widgets/home/icon_tabs.dart';
import 'package:flutter_podcast/widgets/home/podcast_carousel.dart';
import 'package:flutter_podcast/widgets/home/search_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyPreferredSizeWidget(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          SearchingBar(),
          SizedBox(height: 30),
          IconTabs(),
          SizedBox(height: 30),
          PodcastCarousel(),
        ],
      ),
    );
  }
}

//Class to create customize app bar
class MyPreferredSizeWidget extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(140);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good morning,",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Aftab",
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("assets/images/user_image.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
