import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NowPlayingSlideUpWidget extends StatelessWidget {
  final ScrollController controller;

  const NowPlayingSlideUpWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(color: Color(0xffFEF8F8)),
        child: ListView(
          padding: const EdgeInsets.only(top: 15),
          controller: controller,
          children: <Widget>[
            const Center(
                child: Text('CHAPTER',
                    style: TextStyle(fontSize: 20, color: Color(0xffF26B6C)))),
            Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Chapter  01 - Mr Marcedes",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("20 minutes",
                      style: TextStyle(fontSize: 12, color: Color(0xff787878)))
                ],
              ),
            )
          ],
        ),
      );
}
