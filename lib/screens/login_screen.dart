// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:audiobook_app/screens/register_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/entry_header.dart';
import '../widgets/social_media_links.dart';
import './register_screen.dart';
import './home.dart';

class LoginScreen extends StatelessWidget {
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
            EntryHeader('Welcome Back', 'Sign In to continue'),
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
                ])),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 45,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text('SIGN IN'),
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
                'Or sign in using',
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Register',
                            style: TextStyle(color: Color(0xffF26B6C))),
                      ],
                    ),
                  ),
                ))),
          ],
        ));
  }
}
