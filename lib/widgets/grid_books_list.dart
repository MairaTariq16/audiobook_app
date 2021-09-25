import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class BooksListGrid extends StatelessWidget {
  const BooksListGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        height: 220.0,
        child: GridView.count(
          mainAxisSpacing: 5,
          crossAxisCount: 3,
          children: const <Widget>[
            SizedBox(
              width: 110.0,
              child: Image(
                image: AssetImage("assets/images/book-1.png"),
              ),
            ),
            SizedBox(
              width: 110.0,
              child: Image(image: AssetImage("assets/images/book-6.png")),
            ),
            SizedBox(
              width: 110.0,
              child: Image(image: AssetImage("assets/images/book-4.png")),
            ),
            SizedBox(
              width: 110.0,
              child: Image(image: AssetImage("assets/images/book-5.png")),
            ),
            SizedBox(
              width: 110.0,
              child: Image(image: AssetImage("assets/images/book-1.png")),
            ),
            SizedBox(
              width: 110.0,
              child: Image(image: AssetImage("assets/images/book-2.png")),
            ),
            SizedBox(
              width: 110.0,
              child: Image(image: AssetImage("assets/images/book-3.png")),
            ),
            SizedBox(
              width: 110.0,
              child: Image(image: AssetImage("assets/images/book-6.png")),
            ),
            SizedBox(
              width: 110.0,
              child: Image(image: AssetImage("assets/images/book-4.png")),
            ),
            SizedBox(
              width: 110.0,
              child: Image(image: AssetImage("assets/images/book-1.png")),
            ),
          ],
        ));
  }
}
