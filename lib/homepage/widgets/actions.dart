import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderActions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.history,
          color: Colors.white,
          size: 25,
        ),
        const SizedBox(width: 25),
        const Icon(
          FontAwesomeIcons.cog,
          color: Colors.white,
          size: 25,
        ),
        const SizedBox(width: 1),
      ],
    );
  }
}
