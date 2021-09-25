// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialMediaLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage("assets/images/google-color.png"),
          width: 36.0,
          height: 36.0,
        ),
        SizedBox(
          width: 10,
        ),
        Image(
            image: AssetImage("assets/images/facebook-round-color.png"),
            width: 36.0,
            height: 36.0)
      ],
    );
  }
}
