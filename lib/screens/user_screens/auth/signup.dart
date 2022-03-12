import 'package:biddify/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  bool forEye=false;

  @override
  Widget build(BuildContext context) {

    final _height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Signup",style: TextStyle(fontFamily: "Nunito-Bold",color: white,fontSize: 22.sp),),
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left,
            color: white,
            size: _width * 0.07,
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 12.h,right: 12.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.h,),
              Padding(
                padding: EdgeInsets.all(_width * 0.01),
                child: Theme(
                  child: TextFormField(

                    cursorColor: white,
                    style: TextStyle(color: white),
                    decoration: InputDecoration(
                        labelText: "First name",
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
                          Icons.person,
                          color: white,
                        ),

                        hintText: "Enter your first name",
                        hintStyle: TextStyle(
                            fontFamily: "Nunito-Regular",
                            fontSize: 12.sp,
                            color: white),
                        labelStyle: TextStyle(
                            color: white,
                            fontFamily: "Nunito-Regular",
                            fontSize: 12.sp)),

                  ),
                  data: Theme.of(context).copyWith(
                    primaryColor: white,
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding: EdgeInsets.all(_width * 0.01),
                child: Theme(
                  child: TextFormField(

                    cursorColor: white,
                    style: TextStyle(color: white),
                    decoration: InputDecoration(
                        labelText: "Last name",
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
                          Icons.person,
                          color: white,
                        ),

                        hintText: "Enter your last name",
                        hintStyle: TextStyle(
                            fontFamily: "Nunito-Regular",
                            fontSize: 12.sp,
                            color: white),
                        labelStyle: TextStyle(
                            color: white,
                            fontFamily: "Nunito-Regular",
                            fontSize: 12.sp)),

                  ),
                  data: Theme.of(context).copyWith(
                    primaryColor: white,
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding: EdgeInsets.all(_width * 0.01),
                child: Theme(
                  child: TextFormField(

                    cursorColor: white,
                    style: TextStyle(color: white),
                    decoration: InputDecoration(
                        labelText: "Email",
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
                          Icons.email_outlined,
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

                  ),
                  data: Theme.of(context).copyWith(
                    primaryColor: white,
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding: EdgeInsets.all(_width * 0.01),
                child: Theme(
                  child: TextFormField(

                    cursorColor: white,
                    style: TextStyle(color: white),
                    decoration: InputDecoration(
                        labelText: "Address",
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
                          Icons.home_rounded,
                          color: white,
                        ),

                        hintText: "Enter your address",
                        hintStyle: TextStyle(
                            fontFamily: "Nunito-Regular",
                            fontSize: 12.sp,
                            color: white),
                        labelStyle: TextStyle(
                            color: white,
                            fontFamily: "Nunito-Regular",
                            fontSize: 12.sp)),

                  ),
                  data: Theme.of(context).copyWith(
                    primaryColor: white,
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding: EdgeInsets.all(_width * 0.01),
                child: Theme(
                  child: TextFormField(

                    cursorColor: white,
                    style: TextStyle(color: white),
                    decoration: InputDecoration(
                        labelText: "City",
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
                          Icons.business,
                          color: white,
                        ),

                        hintText: "Enter your city",
                        hintStyle: TextStyle(
                            fontFamily: "Nunito-Regular",
                            fontSize: 12.sp,
                            color: white),
                        labelStyle: TextStyle(
                            color: white,
                            fontFamily: "Nunito-Regular",
                            fontSize: 12.sp)),

                  ),
                  data: Theme.of(context).copyWith(
                    primaryColor: white,
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding: EdgeInsets.all(_width * 0.01),
                child: Theme(
                  child: TextFormField(

                    cursorColor: white,
                    style: TextStyle(color: white),
                    decoration: InputDecoration(

                        labelText: "Contact",
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
                          Icons.phone,
                          color: white,
                        ),

                        hintText: "Enter your contect number",
                        hintStyle: TextStyle(
                            fontFamily: "Nunito-Regular",
                            fontSize: 12.sp,
                            color: white),
                        labelStyle: TextStyle(
                            color: white,
                            fontFamily: "Nunito-Regular",
                            fontSize: 12.sp)),
keyboardType: TextInputType.number,
                  ),
                  data: Theme.of(context).copyWith(
                    primaryColor: white,
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding: EdgeInsets.all(_width * 0.01),
                child: Theme(
                  child: TextFormField(

                    cursorColor: white,
                    style: TextStyle(color: white),
                    decoration: InputDecoration(

                        labelText: "CNIC",
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
                          Icons.contacts,
                          color: white,
                        ),

                        hintText: "Enter your CNIC number",
                        hintStyle: TextStyle(
                            fontFamily: "Nunito-Regular",
                            fontSize: 12.sp,
                            color: white),
                        labelStyle: TextStyle(
                            color: white,
                            fontFamily: "Nunito-Regular",
                            fontSize: 12.sp)),
                    keyboardType: TextInputType.number,
                  ),
                  data: Theme.of(context).copyWith(
                    primaryColor: white,
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
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
              SizedBox(height: 10.h,),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(_width * 0.01),
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


                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpResgister()));

                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,)
            ],
          ),
        ),
      ),
    );
  }
}
