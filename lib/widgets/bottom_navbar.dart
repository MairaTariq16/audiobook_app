// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audiobook_app/screens/home.dart';
import 'package:audiobook_app/screens/library.dart';
import 'package:audiobook_app/screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  icon: Icon(Icons.home, size: 30.0, color: Color(0xff7D7D7D))),
              IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.search, size: 30.0, color: Color(0xff7D7D7D))),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Library()));
                  },
                  icon: Icon(Icons.book, size: 30.0, color: Color(0xff7D7D7D))),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                  icon:
                      Icon(Icons.person, size: 30.0, color: Color(0xff7D7D7D))),
            ]),
      ),
    );
  }
}
