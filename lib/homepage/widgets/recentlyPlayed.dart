import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../../data.dart';

class RecentlyPlayed extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: const Text(
            'Recently played',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'LibreFranklin',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Data().recentlyPlayed.length,
            itemBuilder: (context, index) {
              return Container(
                width: 150,
                padding: EdgeInsets.fromLTRB(
                  10,
                  20,
                  10,
                  10,
                ),
                child: Column(
                  crossAxisAlignment: Data().recentlyPlayed[index]
                  ['alignment'] as CrossAxisAlignment,
                  children: [
                    Container(
                      child: GFAvatar(
                        shape: Data().recentlyPlayed[index]['shape']
                        as GFAvatarShape,
                        backgroundImage: AssetImage(
                          Data().recentlyPlayed[index]['image'].toString(),
                        ),
                        radius: 70,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      Data().recentlyPlayed[index]['name'].toString(),
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
