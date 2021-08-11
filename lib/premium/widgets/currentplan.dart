import 'package:flutter/material.dart';

class CurrentPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 30,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 25,
        ),
        height: 80,
        decoration: BoxDecoration(
          color: Color.fromRGBO(51, 51, 51, 51),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Spotify Free',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Text(
              'CURRENT PLAN',
              style: TextStyle(
                color: Color.fromRGBO(171, 171, 171, 50),
                fontSize: 10,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}