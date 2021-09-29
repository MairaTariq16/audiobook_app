// ignore_for_file: prefer_const_constructors

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.play_arrow),
        elevation: 2.0,
        backgroundColor: Color(0xffF26B6C),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
