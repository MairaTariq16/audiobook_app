// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProfileInfo extends StatelessWidget {
  final String fieldname;
  final String value;

  const ProfileInfo(this.fieldname, this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            fieldname,
            style: TextStyle(
                color: Color(0xffF26B6C),
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
          Text(
            value,
            style: TextStyle(
                color: Color(0xff787878),
                fontWeight: FontWeight.bold,
                fontSize: 14),
          )
        ],
      ),
    );
  }
}
