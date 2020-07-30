import 'package:app1/src/twitter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class NavegacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>
          new _NotificationModel(), //va de la mano con ChangeNotifierProvider
      child: Scaffold(
        appBar: AppBar(
          title: Text('Notificaciones'),
          backgroundColor: Colors.red,
        ),
        floatingActionButton: BotonFlotante(),
        bottomNavigationBar: BotonNavigation(),
      ),
    );
  }
}

class BotonNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int numero = Provider.of<_NotificationModel>(context)._numero;

    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.pink,
      items: [
        BottomNavigationBarItem(
            title: Text('Inicio'), icon: FaIcon(FontAwesomeIcons.home)),
        BottomNavigationBarItem(
            title: Text('Notificaciones'),
            icon: Stack(
              //Stack -> Poner uno encima de otro
              children: <Widget>[
                FaIcon(FontAwesomeIcons.bell),
                Positioned(
                    // child:
                    //     Icon(Icons.brightness_1, size: 8, color: Colors.pink),
                    top: 0.0,
                    right: -1.0,
                    child: Container(
                      child: Text(
                        '$numero',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      alignment: Alignment.center,
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    )),
              ],
            )),
        BottomNavigationBarItem(
            title: Text('Ajustes'), icon: FaIcon(FontAwesomeIcons.list))
      ],
    );
  }
}

class BotonFlotante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: FaIcon(FontAwesomeIcons.play),
      backgroundColor: Colors.red,
      onPressed: () {
        int numero =
            Provider.of<_NotificationModel>(context, listen: false).numero;
        numero++;

        Provider.of<_NotificationModel>(context, listen: false).numero = numero;
      },
    );
  }
}

class _NotificationModel extends ChangeNotifier {
  int _numero = 0;
  int get numero => _numero;

  set numero(int valor) {
    this._numero = valor;
    notifyListeners();
  }
}
