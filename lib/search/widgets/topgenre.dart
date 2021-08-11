import 'package:flutter/material.dart';

import './tiles.dart';
import '../../data.dart';

class TopGenre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'You top genres',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'LibreFranklin',
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Tiles(Data().genres),
        const SizedBox(height: 30),
        const Text(
          'Browse all',
          style: TextStyle(
            fontFamily: 'LibreFranklin',
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Tiles(Data().browseall),
      ],
    );
  }
}
