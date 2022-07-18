import 'package:flutter/material.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameCont = TextEditingController();
    TextEditingController passCont = TextEditingController();

    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Colors.pink[400],
      body: Container(
        width: wi,
        height: he,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: wi,
              height: he * 0.4,
              // color: Colors.red[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InputModel(
                    wi,
                    he,
                    nameCont,
                    25,
                    TextInputType.emailAddress,
                    TextInputAction.none,
                    'نام کاربری/ایمیل',
                    false,
                    Icons.person,
                  ),
                  InputModel(
                    wi,
                    he,
                    passCont,
                    50,
                    TextInputType.text,
                    TextInputAction.none,
                    'کلمه عبور',
                    true,
                    Icons.lock,
                  ),
                  InkWell(
                    onTap: () => print('signed in'),
                    child: Container(
                      margin:
                          EdgeInsets.only(left: wi * 0.25, right: wi * 0.25),
                      constraints: BoxConstraints(minHeight: he * 0.065),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'ورود',
                          style: TextStyle(
                            fontFamily: 'sans',
                            fontSize: wi * 0.035,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget InputModel(
      var wi,
      var he,
      TextEditingController cont,
      int max,
      TextInputType keyType,
      TextInputAction action,
      String label,
      bool obsecurText,
      IconData prefixIcon) {
    return Container(
      margin: EdgeInsets.only(left: wi * 0.15, right: wi * 0.15),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(
          obscureText: obsecurText,
          keyboardType: keyType,
          textInputAction: action,
          controller: cont,
          maxLength: max,
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon),
            counterStyle: TextStyle(
              fontFamily: 'sans',
            ),
            labelText: label,
            labelStyle: TextStyle(
              color: Colors.blueGrey,
              fontFamily: 'sans',
              fontSize: wi * 0.031,
            ),
          ),
        ),
      ),
    );
  }
}
