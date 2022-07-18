import 'package:flutter/material.dart';
import 'package:wearina/Models/itemDetail.dart';
import 'package:wearina/Pages/profile.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  late TabController cont;
  int tabIndex = 0;
  int active = 0;
  GlobalKey<ScaffoldState> state = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      key: state,
      endDrawer: Drawer(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(140, 128, 116, 1),
                      Color.fromRGBO(191, 182, 174, 1),
                    ],
                  ),
                ),
                child: Text(
                  'فروشگاه مانتو لارا',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: wi * 0.07,
                    fontFamily: 'sans',
                    color: Color.fromRGBO(89, 56, 44, 1),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (c) => profile(),
                    ),
                  );
                },
                title: Text(
                  'پروفایل',
                  style: TextStyle(
                    fontSize: wi * 0.05,
                    fontFamily: 'sans',
                    color: Color.fromRGBO(89, 56, 44, 1),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.info),
                onTap: () {},
                title: Text(
                  'درباره',
                  style: TextStyle(
                    fontSize: wi * 0.05,
                    fontFamily: 'sans',
                    color: Color.fromRGBO(89, 56, 44, 1),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                onTap: () {},
                title: Text(
                  'سبد خرید',
                  style: TextStyle(
                    fontSize: wi * 0.05,
                    fontFamily: 'sans',
                    color: Color.fromRGBO(89, 56, 44, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: wi,
          height: he,
          color: Color.fromRGBO(140, 128, 116, 1),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: wi * 0.065,
                  vertical: he * 0.015,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'مانتو لارا',
                      style: TextStyle(
                          fontSize: wi * 0.08,
                          color: Colors.white,
                          fontFamily: 'sans'),
                    ),
                    // GestureDetector(
                    //   onTap: () => Navigator.of(context)
                    //       .push(MaterialPageRoute(builder: (f) => Drawer())),
                    // child:
                    InkWell(
                      onTap: () {
                        if (state.currentState!.isEndDrawerOpen) {
                        } else {
                          state.currentState?.openEndDrawer();
                          // setState(() {
                          //   isOpen = true;
                          // });
                        }
                      },
                      child: Icon(
                        Icons.menu,
                        size: wi * 0.08,
                        color: Colors.white,
                      ),
                    ),
                    // ),
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(
                    // minHeight: he * 0.07,
                    ),
                margin: EdgeInsets.symmetric(
                  horizontal: wi * 0.065,
                  vertical: he * 0.015,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: wi * 0.03,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(191, 182, 174, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      textDirection: TextDirection.rtl,
                      cursorColor: Colors.blueGrey[800],
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        hintText: 'نام محصول',
                        hintStyle: TextStyle(
                            color: Colors.blueGrey[400], fontFamily: 'sans'),
                        labelText: 'جستجو',
                        labelStyle: TextStyle(
                            fontSize: wi * 0.04,
                            color: Colors.white,
                            fontFamily: 'sans'),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: he * 0.065,
                margin: EdgeInsets.only(
                  top: he * 0.03,
                  left: wi * 0.065,
                  right: wi * 0.065,
                ),
                padding: EdgeInsets.symmetric(horizontal: wi * 0.02),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((c, i) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          active = i;
                        });
                      },
                      child: Container(
                        constraints: BoxConstraints(minWidth: wi * 0.15),
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color:
                              active == i ? Colors.white12 : Colors.transparent,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: wi * 0.02),
                        child: Center(
                          child: Text(
                            'شماره $i',
                            style: TextStyle(
                                color: active == i
                                    ? Colors.white
                                    : Colors.blueGrey[800],
                                fontFamily: 'sans'),
                          ),
                        ),
                      ),
                    );
                  }),
                  itemCount: 20,
                ),
              ),
              Container(
                height: he * 0.68,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView.builder(
                  itemBuilder: (c, i) {
                    return Container(
                      height: he * 0.27,
                      width: wi * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: i.isEven
                            ? Color.fromRGBO(140, 128, 116, 1)
                            : Color.fromRGBO(191, 182, 174, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.brown.withOpacity(0.5),
                            blurRadius: 18,
                            spreadRadius: 1,
                            offset: Offset(2, 5),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(
                        left: wi * 0.07,
                        right: wi * 0.07,
                        top: he * 0.04,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c) => itemDetail(
                                productName: 'Shirt$i',
                                productCate: 'Category$i',
                                productPrice: '250.000 ریال',
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              width: wi,
                              height: he,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(23),
                                  topLeft: Radius.circular(23),
                                  topRight: Radius.circular(23),
                                  bottomRight: Radius.circular(23),
                                ),
                              ),
                            ),
                            Container(
                              width: wi,
                              height: he,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    constraints:
                                        BoxConstraints(minWidth: wi * 0.25),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          child: Text(
                                            'لباس $i',
                                            style: TextStyle(
                                                fontSize: wi * 0.04,
                                                color: Color.fromRGBO(
                                                    89, 56, 44, 1),
                                                fontFamily: 'sans'),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'دسته بندی $i',
                                            style: TextStyle(
                                                // fontSize: wi * 0.04,
                                                color: Color.fromRGBO(
                                                    89, 56, 44, 1),
                                                fontFamily: 'sans'),
                                          ),
                                        ),
                                        Container(
                                          child: Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: Text(
                                              '250.000 ریال',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      89, 56, 44, 1),
                                                  fontFamily: 'sans'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: wi * 0.26,
                                    height: he * 0.18,
                                    margin: EdgeInsets.only(right: 30),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          'https://www.mrmanto.ir/wp-content/uploads/2021/10/%D9%85%D8%AF%D9%84.jpg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
