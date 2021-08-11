import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String text;
  Buttons(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              50,
            ),
          ),
        ),
        child:  Padding(
          padding:
           EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}
