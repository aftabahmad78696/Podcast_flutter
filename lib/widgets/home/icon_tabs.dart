import 'package:flutter/material.dart';
import 'package:flutter_podcast/model/icon_tab_model.dart';

class IconTabs extends StatefulWidget {
  @override
  _IconTabState createState() => _IconTabState();
}

class _IconTabState extends State<IconTabs> {
  IconTabModel _selectedItem =
      IconTabModel(title: "Premium", icon: Icons.security);
  final List<IconTabModel> _list = [
    IconTabModel(title: "Premium", icon: Icons.security),
    IconTabModel(title: "Popular", icon: Icons.spa),
    IconTabModel(title: "Trending", icon: Icons.poll),
    IconTabModel(title: "Recent", icon: Icons.access_time),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _list.map((IconTabModel model) {
            return _buildItem(model);
          }).toList(),
        ));
  }

  Widget _buildItem(IconTabModel model) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItem = model;
        });
      },
      child: Column(
        children: [
          Container(
            height: 100,
            width: 75,
            decoration: BoxDecoration(
              color: _selectedItem.title == model.title
                  ? Colors.black
                  : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2.0,
                    offset: Offset(0.0, 2.0)),
              ],
            ),
            child: Icon(
              model.icon,
              size: 50,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          Text(
            model.title,
            style: TextStyle(
              color: _selectedItem.title == model.title
                  ? Colors.black
                  : Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
