import 'package:flutter/material.dart';

class itemDetail extends StatefulWidget {
  String productName;
  String productCate;
  String productPrice;
  itemDetail(
      {required this.productName,
      required this.productCate,
      required this.productPrice});

  @override
  State<itemDetail> createState() => _itemDetailState();
}

class _itemDetailState extends State<itemDetail> {
  List images = [
    'https://purepng.com/public/uploads/large/purepng.com-vintage-table-fanelectronics-fan-941524662344zwfx1.png',
    'https://purepng.com/public/uploads/large/purepng.com-fanfanrotating-bladescurrent-of-airbloweraerate-1701527844803ldobp.png',
    'https://purepng.com/public/uploads/large/purepng.com-fanfanrotating-bladescurrent-of-airbloweraerate-170152784481979vfr.png',
    'https://purepng.com/public/uploads/large/purepng.com-fanfanrotating-bladescurrent-of-airbloweraerate-1701527844827wb1rd.png',
    'https://purepng.com/public/uploads/large/purepng.com-fanfanrotating-bladescurrent-of-airbloweraerate-1701527844942skqru.png',
  ];
  int active = 0;
  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.brown[400],
          width: wi,
          height: he,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: he * 0.02, top: wi * 0.03),
                  width: wi,
                  height: he * 0.32,
                  child: Image.network(images[active]),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.only(right: wi * 0.07, top: he * 0.07),
                  child: Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                    size: wi * 0.06,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: wi,
                  height: he * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: ListView(
                    children: [
                      Container(
                        // color: Colors.red,
                        margin: EdgeInsets.only(
                            left: wi * 0.1, right: wi * 0.1, top: he * 0.12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(widget.productCate),
                            Text(widget.productName),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: wi * 0.1,
                          right: wi * 0.1,
                          top: he * 0.012,
                        ),
                        child: Text(
                          'Reprehenderit id velit aliquip ullamco. Adipisicing ad proident occaecat irure ipsum occaecat culpa anim exercitation proident nisi voluptate. Magna ea fugiat id minim fugiat ullamco amet adipisicing nisi. Laborum dolor fugiat est ea officia duis aliqua in anim voluptate.' +
                              'Minim fugiat adipisicing fugiat minim Lorem magna magna et anim. Quis exercitation pariatur culpa nisi officia culpa velit ullamco fugiat quis consequat proident. Duis duis labore elit ipsum esse mollit. Occaecat sint consectetur commodo fugiat do reprehenderit consectetur. Eiusmod ex tempor ut occaecat reprehenderit nulla. Cupidatat anim deserunt fugiat dolor. Do aute do ut tempor ipsum eiusmod exercitation dolor duis consequat voluptate ad. Eiusmod pariatur elit velit sit mollit sunt ea consequat est mollit sint culpa aute. Tempor labore duis aliquip consequat consectetur culpa anim anim excepteur voluptate. Sit dolor incididunt aliquip occaecat ex cillum sint est ex deserunt. Labore consectetur aliquip exercitation laborum exercitation quis irure id ut esse mollit cupidatat eiusmod. Sunt tempor eu pariatur adipisicing minim ullamco nisi nulla nulla do aliqua. ad labore sunt non et ex quis ipsum adipisicing irure velit. Id nulla ad non et occaecat officia irure anim. Cupidatat Lorem pariatur minim dolore. Veniam aliqua sunt aliqua adipisicing nulla velit non aliquip.',
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      InkWell(
                        onTap: () => print('moooore'),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: wi * 0.35,
                            vertical: wi * 0.05,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFF7c9998),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 8,
                                    spreadRadius: 1,
                                    offset: Offset(2, 4))
                              ]),
                          child: Center(
                            child: Text('بیشتر'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: wi,
                  height: he * 0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    color: Color(0xFF7c9998),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: wi * 0.1),
                    height: he,
                    width: wi,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text(
                              widget.productPrice,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: wi * 0.042,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: he * 0.065,
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green[600],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'خرید',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(bottom: he * 0.03),
                  width: wi * 0.8,
                  height: he * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            spreadRadius: 1,
                            offset: Offset(2, 2))
                      ]),
                  child: ListView.builder(
                    itemBuilder: (c, i) {
                      return GestureDetector(
                        onTap: () => setState(() {
                          active = i;
                        }),
                        child: AnimatedOpacity(
                          opacity: active == i ? 1 : 0.3,
                          duration: Duration(milliseconds: 400),
                          child: Container(
                            margin: EdgeInsets.all(15),
                            width: wi * 0.2,
                            // height: he * 0.1,
                            decoration: BoxDecoration(
                              // color: i.isEven ? Colors.red : Colors.blue,
                              image: DecorationImage(
                                image: NetworkImage(images[i]),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
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
