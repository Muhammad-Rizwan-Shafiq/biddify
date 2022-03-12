import 'dart:async';

import 'package:biddify/screens/user_screens/auth/user_login.dart';
import 'package:biddify/screens/user_screens/choose.dart';
import 'package:biddify/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 7), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Choose()));
    });
  }

  @override
  Widget build(BuildContext context) {

    final _height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: lightYellow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Stack(
          //   alignment:Alignment.center,
          //   children: [
          //
          //
          //   ],
          // ),
          SvgPicture.asset(
            "assets/images/splashy.svg",
            height: _height * 0.42,
          ),
          SizedBox(
            height: _height * 0.2,
          ),
          SpinKitFadingCube(
            color: yellow,
            size: _height * 0.07,
          )
        ],
      ),
    );
  }
}
