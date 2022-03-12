import 'package:biddify/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {

    final _height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: black,
      body: SingleChildScrollView(
        child: Padding(
          padding:
          EdgeInsets.only(top: 50.h, bottom: 20.h, left: 20.w, right: 20.w),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/forget_password.png",
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 60.h,
                      child: VerticalDivider(
                        color: white,
                        thickness: 5,
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      "Forget",
                      style: TextStyle(
                          fontFamily: "Nunito-Medium",
                          color: white,
                          fontSize: 35.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.all(_width * 0.01),
                  child: Theme(
                    child: TextFormField(
                      cursorColor: white,
                      style: TextStyle(color: white),
                      decoration: InputDecoration(
                          labelText: "Enter email",
                          fillColor: white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: white, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                            borderSide: new BorderSide(color: white),
                          ),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.mail,
                            color: white,
                          ),
                          hintText: "Enter your email",
                          hintStyle: TextStyle(
                              fontFamily: "Nunito-Regular",
                              fontSize: 12.sp,
                              color: white),
                          labelStyle: TextStyle(
                              color: white,
                              fontFamily: "Nunito-Regular",
                              fontSize: 12.sp)),
                      validator: (value) {
                        if (!value!.contains("@")) {
                          return 'You have missed "@"';
                        }
                        return null;
                      },
                      // onSaved: (String? value) {
                      //   email = value!;
                      // },
                    ),
                    data: Theme.of(context).copyWith(
                      primaryColor: white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),


                Center(
                  child: Padding(
                    padding: EdgeInsets.all(_width * 0.01),
                    child: Container(
                      width: double.infinity,
                      height: 60.h,
                      child: new MaterialButton(
                        elevation: 0,
                        child: new Text(
                          'Send',
                          style: TextStyle(
                            fontFamily: "Nunito-Regular",
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                            color:  black,
                          ),
                        ),
                        textColor: Colors.black,

                        color:yellow,
                        onPressed: () {

                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
