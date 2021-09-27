import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class BooksListH extends StatelessWidget {
  const BooksListH({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              
            },
            child: Container(
              width: 110.0,
              margin: const EdgeInsets.only(right: 5),
              child: const Image(image: AssetImage("assets/images/book-1.png")),
            ),
          ),
          Container(
            width: 110.0,
            margin: const EdgeInsets.only(right: 5),
            child: const Image(image: AssetImage("assets/images/book-2.png")),
          ),
          Container(
            width: 110.0,
            margin: const EdgeInsets.only(right: 5),
            child: const Image(image: AssetImage("assets/images/book-3.png")),
          ),
          Container(
            width: 110.0,
            margin: const EdgeInsets.only(right: 5),
            child: const Image(image: AssetImage("assets/images/book-4.png")),
          ),
          Container(
            width: 110.0,
            margin: const EdgeInsets.only(right: 5),
            child: const Image(image: AssetImage("assets/images/book-5.png")),
          ),
        ],
      ),
    );
  }
}
