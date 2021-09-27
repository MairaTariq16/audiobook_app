// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../widgets/now_playing_main.dart';
import '../widgets/now_playing_slideup_panel.dart';

class NowPlaying extends StatelessWidget {
  const NowPlaying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Now Playing",
            style: TextStyle(color: Colors.white),
          ),
          leading: BackButton(color: Colors.white),
          backgroundColor: Color(0xffF26B6C),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: SlidingUpPanel(
          minHeight: 85,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: const [BoxShadow(color: Colors.white, blurRadius: 0)],
          parallaxEnabled: true,
          parallaxOffset: 0.9,
          body: NowPlayingMain(),
          panelBuilder: (controller) =>
              NowPlayingSlideUpWidget(controller: controller),
        ));
  }
}
