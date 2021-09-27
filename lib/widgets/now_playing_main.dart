// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class NowPlayingMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Image.asset("assets/images/now_playing_book.png"),
          ),
          Text('Chapter - 01', style: TextStyle(color: Color(0xffF26B6C))),
          Text('MR. MERCEDES'),
          Text(
            'Stephen King',
            style: TextStyle(fontSize: 12),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
            child: ProgressBar(
              progress: Duration(milliseconds: 1000),
              total: Duration(milliseconds: 5000),
              progressBarColor: Color(0xffF26B6C),
              baseBarColor: Colors.grey.withOpacity(0.24),
              thumbColor: Color(0xffF26B6C),
              barHeight: 3.0,
              thumbRadius: 5.0,
              // onSeek: (duration) {
              //   _player.seek(duration);
              // },
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.skip_previous, size: 25),
                  Icon(Icons.fast_rewind, size: 25),
                  Icon(Icons.pause_circle, color: Color(0xffF26B6C), size: 55),
                  Icon(Icons.fast_forward, size: 25),
                  Icon(Icons.skip_next, size: 25),
                ]),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.nightlight_outlined,
                        color: Color(0xff787878), size: 25),
                    Icon(Icons.repeat, color: Color(0xff787878), size: 25),
                    Icon(Icons.bookmark_border,
                        color: Color(0xff787878), size: 25)
                  ]),
            ),
          )
        ]);
  }
}
