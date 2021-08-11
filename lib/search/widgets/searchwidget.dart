import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          const Icon(
            Icons.search_sharp,
            size: 30,
            color: Color.fromRGBO(83, 83, 83, 1),
          ),
          const SizedBox(width: 10),
          const Text(
            'Artists, Songs, or podcasts',
            style: TextStyle(
              fontFamily: 'LibreFranklin',
              color: Color.fromRGBO(83, 83, 83, 1),
              fontSize: 17,
            ),
            softWrap: true,
            maxLines: 1,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}
