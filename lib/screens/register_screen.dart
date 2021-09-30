// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:audiobook_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/entry_header.dart';
import '../widgets/social_media_links.dart';
import 'home.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            "Go Back",
            style: TextStyle(color: Color(0xff787878)),
          ),
          leading: BackButton(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            EntryHeader('Create an Account', 'Register to Continue'),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                margin: EdgeInsets.only(bottom: 30),
                child: Column(children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Email Address',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Retype Password',
                    ),
                  )
                ])),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 45,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text('REGISTER'),
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color(0xffF26B6C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 10),
              child: Center(
                  child: Text(
                'Or register using',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              )),
            ),
            SocialMediaLinks(),
            Container(
                margin: EdgeInsets.only(top: 50),
                child: Center(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign In',
                            style: TextStyle(color: Color(0xffF26B6C))),
                      ],
                    ),
                  ),
                ))),
          ],
        ));
  }
}
