// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import '../widgets/horizontal_books_list.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/chapter_info.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Library",
            style: TextStyle(color: Color(0xffF26B6C)),
          ),
          leading: BackButton(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20, top: 10, right: 20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Recently Played',
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
                  Text('Playlists',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4F4F4F))),
                  Text('See All',
                      style: TextStyle(fontSize: 12, color: Colors.pink))
                ],
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text("There is no saved playlists yet",
                      style: TextStyle(color: Color(0xff787878))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Bookmarks',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4F4F4F))),
                  Text('See All',
                      style: TextStyle(fontSize: 12, color: Colors.pink))
                ],
              ),
              ChapterInfo(
                  'Chapter  01 - Mr Marcedes Air', '10:00 - 12:05 minutes'),
              ChapterInfo(
                  'Chapter  02 - Mr Marcedes Air', '2:02 - 8:50 minutes'),
              ChapterInfo(
                  'Chapter  03 - Mr Marcedes Air', '19:00 - 20:21 minutes'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Most Played',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4F4F4F))),
                  Text('See All',
                      style: TextStyle(fontSize: 12, color: Colors.pink)),
                ],
              ),
              ChapterInfo(
                  'Chapter  01 - Mr Marcedes Air', '10:00 - 12:05 minutes'),
              ChapterInfo(
                  'Chapter  02 - Mr Marcedes Air', '2:02 - 8:50 minutes'),
              ChapterInfo(
                  'Chapter  03 - Mr Marcedes Air', '19:00 - 20:21 minutes'),
              ChapterInfo(
                  'Chapter  04 - Mr Marcedes Air', '19:00 - 20:21 minutes'),
              ChapterInfo(
                  'Chapter  05 - Mr Marcedes Air', '19:00 - 20:21 minutes'),
              ChapterInfo(
                  'Chapter  06 - Mr Marcedes Air', '19:00 - 20:21 minutes'),
            ]),
          ),
        ),
        //Bottom navigation bar
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.play_arrow),
          elevation: 2.0,
          backgroundColor: Color(0xffF26B6C),
        ),
        bottomNavigationBar: BottomNavBar());
  }
}
