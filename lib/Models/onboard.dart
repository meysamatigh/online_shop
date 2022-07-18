import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:flutter/material.dart';
import 'package:wearina/Models/signupin.dart';
import 'package:wearina/Pages/mainScreen/mainScreen.dart';

class onBoard extends StatefulWidget {
  const onBoard({Key? key}) : super(key: key);

  @override
  State<onBoard> createState() => _onBoardState();
}

class _onBoardState extends State<onBoard> {
  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: wi,
        height: he,
        child: IntroViewsFlutter(
          [
            PageViewModel(
              body: Container(
                // width: wi,
                // height: he,
                child: Text('data'),
              ),
              pageColor: Colors.purple,
              title: SizedBox(
                child: Text('Page1'),
              ),
              mainImage: Icon(
                Icons.card_giftcard_outlined,
                color: Colors.white,
                size: wi * 0.3,
              ),
            ),
            PageViewModel(
              body: Container(
                // width: wi,
                // height: he,
                child: Text('data 2'),
              ),
              pageColor: Colors.pink[400],
              title: SizedBox(
                child: Text('Page 2'),
              ),
              mainImage: Icon(
                Icons.access_alarm_outlined,
                color: Colors.white,
                size: wi * 0.3,
              ),
            ),
            PageViewModel(
              body: Container(
                // width: wi,
                // height: he,
                child: Text('data 3'),
              ),
              pageColor: Colors.lightBlueAccent,
              title: SizedBox(
                child: Text('Page 3'),
              ),
              mainImage: Icon(
                Icons.accessibility_new,
                color: Colors.white,
                size: wi * 0.3,
              ),
            ),
          ],
          doneText: Text(
            'شروع',
            style: TextStyle(fontFamily: 'sans', fontSize: wi * 0.035),
          ),
          skipText: Text(
            'رد کردن',
            style: TextStyle(fontFamily: 'sans', fontSize: wi * 0.035),
          ),
          showBackButton: true,
          backText: Text(
            'قبلی',
            style: TextStyle(fontFamily: 'sans', fontSize: wi * 0.035),
          ),
          showNextButton: true,
          nextText: Text(
            'بعدی',
            style: TextStyle(fontFamily: 'sans', fontSize: wi * 0.035),
          ),
          onTapDoneButton: () {
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (f) => signupin()));
          },
        ),
      ),
    );
  }
}
