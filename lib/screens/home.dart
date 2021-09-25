// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import '../widgets/horizontal_books_list.dart';
import '../widgets/horizontal_category_list.dart';
import '../widgets/grid_books_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              title: Text(
                "Explore",
                style: TextStyle(color: Color(0xffF26B6C)),
              ),
              leading: BackButton(color: Colors.black),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              centerTitle: true,
            ),
            body: Container(
                margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('New Release Books',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4F4F4F))),
                        Text('See All',
                            style: TextStyle(fontSize: 12, color: Colors.pink))
                      ],
                    ),
                    BooksListH(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Category',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4F4F4F))),
                        Text('See All',
                            style: TextStyle(fontSize: 12, color: Colors.pink))
                      ],
                    ),
                    CategoryListH(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Featured Books',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4F4F4F))),
                        Text('See All',
                            style: TextStyle(fontSize: 12, color: Colors.pink)),
                      ],
                    ),
                    BooksListGrid(),
                  ],
                )),
            //Bottom navigation bar
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.play_arrow),
              elevation: 2.0,
              backgroundColor: Color(0xffF26B6C),
            ),
            bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.home,
                              size: 30.0, color: Color(0xff7D7D7D))),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search,
                              size: 30.0, color: Color(0xff7D7D7D))),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.book,
                              size: 30.0, color: Color(0xff7D7D7D))),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person,
                              size: 30.0, color: Color(0xff7D7D7D))),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
