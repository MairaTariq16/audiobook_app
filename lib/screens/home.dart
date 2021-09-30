// ignore_for_file: prefer_const_constructors

import 'package:audiobook_app/screens/now_playing.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import '../widgets/horizontal_books_list.dart';
import '../widgets/horizontal_category_list.dart';
import '../widgets/grid_books_list.dart';
import '../widgets/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                children: [
                  Text('New Release Books',
                      style: Theme.of(context).textTheme.headline2),
                  Text('See All',
                      style: TextStyle(fontSize: 12, color: Colors.pink))
                ],
              ),
              BooksListH(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Category',
                      style: Theme.of(context).textTheme.headline2),
                  Text('See All',
                      style: TextStyle(fontSize: 12, color: Colors.pink))
                ],
              ),
              CategoryListH(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Featured Books',
                      style: Theme.of(context).textTheme.headline2),
                  Text('See All',
                      style: TextStyle(fontSize: 12, color: Colors.pink)),
                ],
              ),
              BooksListGrid(),
            ],
          )),
      //Bottom navigation bar
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        child: _buildFAB(context),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

Widget _buildFAB(context) => FloatingActionButton(
      onPressed: () => _onFabTap(context),
      child: Icon(Icons.play_arrow),
      elevation: 2.0,
      backgroundColor: Color(0xffF26B6C),
    );

_onFabTap(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => NowPlaying()));
}
