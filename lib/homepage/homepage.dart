import 'package:flutter/material.dart';

import './widgets/recentlyPlayed.dart';
import './widgets/playlists.dart';
import './widgets/actions.dart';
import './widgets/jumpbackin.dart';
import '../bottomnavigationbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(57, 90, 81, 1),
              Color.fromRGBO(46, 71, 65, 1),
              Color.fromRGBO(43, 64, 59, 1),
              Color.fromRGBO(18, 18, 18, 1),
            ],
            stops: [
              0.01,
              0.03,
              0.06,
              0.2,
            ],
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Good evening ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'LibreFranklin',
                  ),
                ),
                HeaderActions(),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 210,
              child: Playlists(),
            ),
            const SizedBox(
              height: 20,
            ),
            RecentlyPlayed(),
            JumpIn(),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(0),
    );
  }
}
