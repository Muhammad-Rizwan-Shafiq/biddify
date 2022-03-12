import 'package:biddify/screens/user_screens/auth/forget_password.dart';
import 'package:biddify/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {

  bool isChecked = false;
  bool buttonClicked=false;
  bool forEye=false;

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
          EdgeInsets.only(top: 30.h, bottom: 20.h, left: 20.w, right: 20.w),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/bid_photo.png",
                    height: 230.h,

                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 60.h,
                      child: VerticalDivider(
                        color: yellow,
                        thickness: 5,
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      "Login",
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
                          labelText: "Enter Email",
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
                Padding(
                  padding: EdgeInsets.all(_width * 0.01),
                  child: Theme(
                    child: TextFormField(
                      obscureText: forEye,
                      cursorColor: white,
                      style: TextStyle(color: white),
                      decoration: InputDecoration(
                          labelText: "Enter Password",
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
                            Icons.lock,
                            color: white,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: (){
                              setState(() {
                                forEye=!forEye;
                              });
                            },
                            child: forEye == false ? Icon(
                              Icons.visibility,
                              color: white,
                            ) : Icon(
                              Icons.visibility_off,
                              color: white,
                            ),
                          ),
                          hintText: "Enter your password",
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
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      side: BorderSide(color: Color(0xffffffff)),
                      checkColor: yellow,
                      hoverColor: Colors.white,
                      activeColor: black,
                    ),
                    Text(
                      "Remember me",
                      style: TextStyle(
                          fontFamily: "Nunito-Regular",
                          color: white,
                          fontSize: 15.sp),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgetPassword()));
                      },
                      child: Text(
                        "Forget Password ?",
                        style: TextStyle(
                            fontFamily: "Nunito-Regular",
                            color: white,
                            fontSize: 15.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h,),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(_width * 0.01),
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


                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpResgister()));

                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
