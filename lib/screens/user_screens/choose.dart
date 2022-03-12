import 'package:biddify/screens/user_screens/auth/signup.dart';
import 'package:biddify/screens/user_screens/auth/user_login.dart';
import 'package:biddify/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Choose extends StatefulWidget {
  const Choose({Key? key}) : super(key: key);

  @override
  _ChooseState createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {

    final _height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: lightYellow,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50.h,),
            SvgPicture.asset(
              "assets/images/choose.svg",
              height: _height * 0.4,
              width: double.infinity,
            ),
            SizedBox(
              height: _height * 0.04,
            ),
            Center(
              child: Text(
                "Share your Stuff for Bidding",
                style: TextStyle(
                    fontFamily: "Nunito-Bold", fontSize: 26.sp),
              ),
            ),
            SizedBox(
              height: _height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: _width * 0.03,
                right: _width * 0.03,
              ),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(
                  fontFamily: "Nunito-Regular",
                  fontSize: 17.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: _width * 0.04,
                right: _width * 0.04,
              ),
              child: Container(
                width: double.infinity,
                height: 60.h,
                child: new MaterialButton(
                  elevation: 0,
                  child: new Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: "Nunito-Regular",
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: black,
                    ),
                  ),
                  textColor: black,

                  color:yellow,
                  onPressed: () {


                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UserLogin()));

                  },
                ),
              ),
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: _width * 0.04,
                right: _width * 0.04,
              ),
              child: Container(
                width: double.infinity,
                height: 60.h,
                child: new MaterialButton(
                  elevation: 0,
                  child: new Text(
                    'Signup',
                    style: TextStyle(
                      fontFamily: "Nunito-Regular",
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: black,
                    ),
                  ),
                  textColor: black,

                  color:yellow,
                  onPressed: () {


                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));

                  },
                ),
              ),
            ),
           SizedBox(height: 20.h,),
            Center(
              child: Text(
                "Terms and Conditions",
                style: TextStyle(
                    fontFamily: "Nunito-Regular",
                    fontSize: 14.sp,
                    color: black,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: _height * 0.03,
            )
          ],
        ),
      ),
    );
  }
}
