import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Tiles extends StatelessWidget {
  String title;
  GFAvatarShape shape;
  Tiles(this.title, this.shape);

  @override
  Widget build(BuildContext context) {
    return GFListTile(
      avatar: GFAvatar(
        radius: 30,
        child: Icon(
          Icons.add,
          size: 40,
          color: Colors.white54,
        ),
        backgroundColor: Colors.grey[900],
        shape: shape,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
