import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../../data.dart';

class JumpIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: const Text(
              'Jump back in',
              style: TextStyle(
                fontFamily: 'LibreFranklin',
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: Data().anotherRandomList.length,
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
                    crossAxisAlignment: Data().anotherRandomList[index]
                        ['alignment'] as CrossAxisAlignment,
                    children: [
                      Container(
                        child: GFAvatar(
                          shape: Data().anotherRandomList[index]['shape']
                              as GFAvatarShape,
                          backgroundImage: AssetImage(
                            Data().anotherRandomList[index]['image'].toString(),
                          ),
                          radius: 70,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        Data().anotherRandomList[index]['name'].toString(),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
