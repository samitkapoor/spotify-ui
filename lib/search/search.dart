import 'package:flutter/material.dart';

import '../bottomnavigationbar.dart';
import './widgets/searchwidget.dart';
import './widgets/topgenre.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 18, 18, 80),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: ListView(
          children: [
            const Text(
              'Search',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontFamily: 'LibreFranklin',
                fontWeight: FontWeight.bold,
              ),
            ),
            SearchWidget(),
            TopGenre(),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(1),
    );
  }
}
