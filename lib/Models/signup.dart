import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    TextEditingController nameCont = TextEditingController();
    TextEditingController emailCont = TextEditingController();
    TextEditingController phoneCont = TextEditingController();
    TextEditingController pass1Cont = TextEditingController();
    TextEditingController pass2Cont = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: wi,
          height: he,
          child: ListView(
            children: [
              SizedBox(height: he * 0.03),
              InputModel(
                wi,
                he,
                nameCont,
                25,
                TextInputType.text,
                TextInputAction.done,
                'نام کاربری',
                false,
                Icons.person,
              ),
              InputModel(
                wi,
                he,
                emailCont,
                60,
                TextInputType.emailAddress,
                TextInputAction.done,
                'ایمیل',
                false,
                Icons.email,
              ),
              InputModel(
                wi,
                he,
                phoneCont,
                11,
                TextInputType.phone,
                TextInputAction.done,
                'شماره موبایل',
                false,
                Icons.phone,
              ),
              InputModel(
                wi,
                he,
                pass1Cont,
                50,
                TextInputType.text,
                TextInputAction.done,
                'کلمه عبور',
                true,
                Icons.lock,
              ),
              InputModel(
                wi,
                he,
                pass2Cont,
                50,
                TextInputType.text,
                TextInputAction.done,
                'تکرار کلمه عبور',
                true,
                Icons.lock,
              ),
              SizedBox(height: he * 0.03),
              InkWell(
                onTap: () => print('signed up'),
                child: Container(
                  margin: EdgeInsets.only(left: wi * 0.25, right: wi * 0.25),
                  constraints: BoxConstraints(minHeight: he * 0.065),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'ثبت نام',
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
