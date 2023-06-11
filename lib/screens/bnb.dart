import 'package:flutter/material.dart';
import 'package:flutter_podcast/screens/home_page.dart';

class BNB extends StatefulWidget {
  @override
  _BNBState createState() => _BNBState();
}

class _BNBState extends State<BNB> {
  final List<Widget> _pages = [
    HomePage(),
    Scaffold(
        body: Center(
      child: Text("Favorite podcast screen coming soon...."),
    )),
    Scaffold(
        body: Center(
      child: Text("Podcast screen coming soon...."),
    )),
    Scaffold(
        body: Center(
      child: Text("My Profile coming soon...."),
    )),
  ];
  final List<IconData> _iconList = [
    Icons.home,
    Icons.favorite,
    Icons.blur_on,
    Icons.person
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: _iconList
            .asMap()
            .entries
            .map((mapEntry) => BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  mapEntry.value,
                  color: _selectedIndex == mapEntry.key
                      ? Colors.pink
                      : Colors.black,
                  size: 30,
                )))
            .toList(),
      ),
    );
  }
}
