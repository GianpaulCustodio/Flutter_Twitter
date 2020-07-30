import 'package:animate_do/animate_do.dart';
import 'package:app1/src/twitter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificaciones'),
        actions: <Widget>[
          IconButton(
            icon: FaIcon(FontAwesomeIcons.solidHeart),
            onPressed: () {
              //Navigator.push(  -> Entrar a otra página
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      //CupertinoPageRoute -> La página se desliza desde la derecha y sale en sentido inverso
                      builder: (BuildContext context) => Pagina1Page()));
            },
          ),
          IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      //CupertinoPageRoute -> La página se desliza desde la derecha y sale en sentido inverso
                      builder: (BuildContext context) => TwitterPage()));
            },
          )
        ],
      ),
      floatingActionButton: ElasticInRight(
        delay: Duration(seconds: 1),
        child: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.play),
          onPressed: () {},
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElasticIn(
              delay: Duration(milliseconds: 1600),
              child: Icon(Icons.flash_auto, color: Colors.blue, size: 70)),
          FadeInDown(
            delay: Duration(milliseconds: 200),
            child: Text('Flutter',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300)),
          ),
          FadeInDown(
            delay: Duration(milliseconds: 800),
            child: Text('Hecho por Gianpaul Custodio',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
          ),
          FadeInUp(
            delay: Duration(milliseconds: 800),
            child: Container(
              width: 300,
              height: 2,
              color: Colors.blue,
            ),
          )
        ],
      )),
    );
  }
}
