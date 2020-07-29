import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FadeInUp(
        delay: Duration(milliseconds: 10),
        child: FloatingActionButton(
          backgroundColor: Colors.pink,
          child: FaIcon(FontAwesomeIcons.play),
          onPressed: () {},
        ),
      ),
      backgroundColor: Color(0xff1DA1F2),
      body: Center(
        child: ZoomOut(
          from: 30,
          delay: Duration(seconds: 1),
          child:
              FaIcon(FontAwesomeIcons.twitter, size: 90, color: Colors.white),
        ),
      ),
    );
  }
}
