import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  late PageController cont;
  int current = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cont = PageController(viewportFraction: 0.8);
    cont.addListener(
      () {
        int next = cont.page!.round();
        if (current != next) {
          setState(() {
            current = next;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: wi,
          height: he,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: wi * 0.37, top: he * 0.18),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 13, spreadRadius: 7)
                  ],
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              ),
              // Align(
              //   alignment: Alignment.topCenter,
              //   child: Container(
              //     margin: EdgeInsets.only(top: he * 0.18),
              //     width: wi * 0.25,
              //     height: wi * 0.25,
              //     decoration: BoxDecoration(
              //       shape: BoxShape.circle,
              //       color: Colors.white,
              //       border: Border.all(
              //         width: 1.5,
              //         color: Colors.blueGrey.withOpacity(0.5),
              //       ),
              //       boxShadow: [
              //         BoxShadow(
              //           color: Color(0xFF7c9998),
              //           blurRadius: 15,
              //           spreadRadius: 1,
              //           offset: Offset(2, 2),
              //         ),
              //       ],
              //       image: DecorationImage(
              //         image: NetworkImage(
              //             'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80'),
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ),
              // ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: he * 0.32),
                  child: Text(
                    'میثم',
                    style: TextStyle(fontFamily: 'sans'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: wi,
                  height: he * 0.5,
                  color: Colors.white,
                  child: PageView.builder(
                    controller: cont,
                    itemBuilder: (c, i) {
                      bool active = i == current;
                      return buildPage(active, i, wi, he);
                    },
                    itemCount: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildPage(bool active, int indexi, var wi, var he) {
    // var media = MediaQuery.of(context).size;
    final double blur = active ? 30 : 50;
    final double offset = active ? 10 : 4;
    final double top = active ? 100 : 200;
    final double rness = active ? 0.15 : 0.35;
    final double fSize = active ? wi * 0.062 : 18;
    final Color shadow = active
        ? Color(0xFF7c9998).withOpacity(0.5)
        : Colors.black.withOpacity(0.7);

    return AnimatedContainer(
      margin: EdgeInsets.only(top: top, bottom: 50, left: 5, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: shadow, blurRadius: blur, offset: Offset(offset, offset))
        ],
      ),
      duration: Duration(milliseconds: 500),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: wi * 0.5,
              height: wi * 0.35,
              margin: EdgeInsets.only(top: wi * 0.05),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://arga-mag.com/file/img/2022/02/Girls-coat-model-1401-66.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: he * 0.15),
              child: Text(
                'لباس $indexi',
                style: TextStyle(fontFamily: 'sans'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                margin: EdgeInsets.only(bottom: wi * 0.05),
                child: Text(
                  '$indexi',
                  style: TextStyle(fontFamily: 'sans'),
                )),
          )
        ],
      ),
    );
  }
}
