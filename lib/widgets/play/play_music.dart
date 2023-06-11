import 'package:flutter/material.dart';

class PlayMusic extends StatefulWidget {
  @override
  _PlayMusicState createState() => _PlayMusicState();
}

class _PlayMusicState extends State<PlayMusic> {
  final List<IconData> _iconList = [
    Icons.skip_previous,
    Icons.play_arrow,
    Icons.skip_next,
  ];
  int _selectedIndex = 1;
  double _currentPosition = 0.0;
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: _currentPosition,
          onChanged: (double position) {
            setState(() {
              _currentPosition = position;
            });
            ;
          },
          min: 0.0,
          max: 100,
          activeColor: Colors.pink,
          inactiveColor: Colors.grey,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _iconList
              .asMap()
              .entries
              .map((mapEntry) => GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = mapEntry.key;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                        color: _selectedIndex == mapEntry.key
                            ? Colors.pink
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(mapEntry.value,
                          size: 40,
                          color: _selectedIndex == mapEntry.key
                              ? Colors.white
                              : Colors.black),
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }
}
