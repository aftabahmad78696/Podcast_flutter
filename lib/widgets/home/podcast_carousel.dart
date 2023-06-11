import 'package:flutter/material.dart';
import 'package:flutter_podcast/data/dummy_data.dart';
import 'package:flutter_podcast/screens/play_screen.dart';

class PodcastCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "View All",
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: DummyData.podcastList
                  .map((mapmodel) => _buildPodcastItem(mapmodel, context))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPodcastItem(Map<String, String> mapModel, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              print("click");
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => PlayScreen(model: mapModel)));
            },
            child: Container(
              height: 300,
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2.0, 0.0),
                    color: Colors.black,
                    blurRadius: 4.0,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  mapModel["imageUrl"].toString(),
                  height: 300,
                  width: 220,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(mapModel["name"].toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              )),
          SizedBox(height: 10),
          Text(mapModel["author"].toString(),
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              )),
        ],
      ),
    );
  }
}
