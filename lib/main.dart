import 'package:app1/src/pages/navegation_page.dart';
import 'package:app1/src/pages/pagina1_page.dart';
import 'package:app1/src/twitter.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App1',
        debugShowCheckedModeBanner: false,
        home: NavegacionPage());
  }
}
