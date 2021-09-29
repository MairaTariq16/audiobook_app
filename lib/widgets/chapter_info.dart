// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ChapterInfo extends StatelessWidget {
  final String title;
  final String time;
  const ChapterInfo(this.title, this.time, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(children: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.play_circle_outline, color: Color(0xffF26B6C))),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: TextStyle(color: Color(0xff4F4F4F)),
          ),
          Text(time, style: TextStyle(fontSize: 12, color: Color(0xff787878)))
        ])
      ]),
    );
  }
}
