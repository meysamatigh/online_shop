import 'package:flutter/material.dart';
import 'package:wearina/Models/itemDetail.dart';
import 'package:wearina/Models/onboard.dart';
import 'package:wearina/Pages/mainScreen/mainScreen.dart';
import 'package:wearina/Pages/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: main_here(),
    );
  }
}

class main_here extends StatefulWidget {
  @override
  State<main_here> createState() => _main_hereState();
}

class _main_hereState extends State<main_here> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((c) => Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (e) => mainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: wi,
        height: he,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.2, 1],
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: he * 0.2),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                maxRadius: 60,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: he * 0.1),
                child: Text(
                  'Wearina',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: wi * 0.04,
                      fontFamily: 'sans'),
                ))
          ],
        ),
      ),
    );
  }
}
