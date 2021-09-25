import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class CategoryListH extends StatelessWidget {
  const CategoryListH({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 50.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              width: 100.0,
              height: 50.0,
              margin: const EdgeInsets.only(right: 10),
              color: const Color(0xffFEF0F0),
              child: const Center(
                  child: Text(
                'Suspense',
                style: TextStyle(color: Colors.pink),
              ))),
          Container(
              width: 100.0,
              height: 50.0,
              margin: const EdgeInsets.only(right: 10),
              color: const Color(0xffF1FAF5),
              child: const Center(
                  child: Text(
                'Thriller',
                style: TextStyle(color: Colors.green),
              ))),
          Container(
              width: 100.0,
              height: 50.0,
              margin: const EdgeInsets.only(right: 10),
              color: const Color(0xffFEFAED),
              child: const Center(
                  child: Text(
                'Humour',
                style: TextStyle(color: Colors.yellow),
              ))),
          Container(
              width: 100.0,
              height: 50.0,
              margin: const EdgeInsets.only(right: 10),
              color: const Color(0xffEAF2FD),
              child: const Center(
                  child: Text(
                'Fiction',
                style: TextStyle(color: Colors.blue),
              ))),
        ],
      ),
    );
  }
}
