import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/getwidget.dart';

import './widgets/tiles.dart';
import './widgets/roundedCards.dart';
import './widgets/header.dart';
import '../bottomnavigationbar.dart';
import '../data.dart';

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 18, 18, 1),
      body: ListView(
        children: [
          Header(),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              RoundedCards('Playlists'),
              const SizedBox(
                width: 10,
              ),
              RoundedCards('Artists'),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.compare_arrows_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Recently played',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'LibreFranklin',
                        fontWeight: FontWeight.w100,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.add_box_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
          ),
          ...Data().library.map((val) {
            return GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage(
                  val['image'].toString(),
                ),
                radius: 30,
                shape: val['shape'] as dynamic,
              ),
              title: Text(
                val['name'].toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              subTitle: Text(
                val['subtitle'].toString(),
                style: TextStyle(
                  color: Color.fromRGBO(167, 167, 167, 1),
                  fontSize: 14,
                ),
              ),
            );
          }).toList(),
          Tiles('Add artists', GFAvatarShape.circle),
          Tiles('Add podcasts & shows', GFAvatarShape.square),
        ],
      ),
      bottomNavigationBar: BottomBar(2),
    );
  }
}
