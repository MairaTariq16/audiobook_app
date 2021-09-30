// ignore_for_file: prefer_const_constructors

import 'package:audiobook_app/widgets/bottom_navbar.dart';
import 'package:audiobook_app/widgets/profile_info.dart';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

import 'now_playing.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.white),
          ),
          leading: BackButton(color: Colors.white),
          backgroundColor: Color(0xffF48182),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(13.0),
                            bottomRight: Radius.circular(13.0)),
                        color: Color(0xffF48182)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                            image: AssetImage(
                                "assets/images/profile-picture.png")),
                        Text('Maria Akter Dipti',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))
                      ],
                    ))),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  ProfileInfo('User Name', 'dipti_2020'),
                  ProfileInfo('Email', 'mariadipti@gmail.com'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Change Password',
                        style: TextStyle(
                            color: Color(0xffF26B6C),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_right,
                              size: 30, color: Color(0xff7D7D7D))),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Notification',
                        style: TextStyle(
                            color: Color(0xffF26B6C),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_none,
                              size: 20, color: Color(0xff7D7D7D))),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Enable Dark Mode',
                        style: TextStyle(
                            color: Color(0xffF26B6C),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.dark_mode_outlined,
                              size: 20, color: Color(0xff7D7D7D))),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Settings',
                        style: TextStyle(
                            color: Color(0xffF26B6C),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.settings_outlined,
                              size: 20, color: Color(0xff7D7D7D))),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _buildFAB(context),
        bottomNavigationBar: BottomNavBar());
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
