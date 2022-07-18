import 'package:flutter/material.dart';
import 'package:wearina/Models/signin.dart';
import 'package:wearina/Models/signup.dart';

class signupin extends StatefulWidget {
  const signupin({Key? key}) : super(key: key);

  @override
  State<signupin> createState() => _signupinState();
}

class _signupinState extends State<signupin>
    with SingleTickerProviderStateMixin {
  late TabController cont;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cont = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: wi * 0.2,
                  right: wi * 0.2,
                  top: he * 0.05,
                ),
                height: he * 0.09,
                decoration: BoxDecoration(
                    // color: Colors.pink,
                    ),
                child: TabBar(
                  controller: cont,
                  indicatorColor: Colors.pink[400],
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.grey[800],
                  labelStyle:
                      TextStyle(fontFamily: 'sans', fontSize: wi * 0.04),
                  tabs: <Widget>[
                    Tab(text: 'ورود'),
                    Tab(text: 'ثبت نام'),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: wi * 0.04),
                  child: TabBarView(
                    controller: cont,
                    children: [
                      signin(),
                      signup(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
