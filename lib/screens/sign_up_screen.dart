import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_tracker_app/constants/colors.dart';
import 'package:task_tracker_app/screens/log_in_screen.dart';

import '../constants/texts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(AppColors.homeScreenBgColor),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50.h),
            buildSignUpHeading(),
            _buildUserIconLogo(),
            SizedBox(height: 30.h),
            _buildTextField(hintText: "Enter your Name"),
            _buildTextField(hintText: "Enter your Email"),
            _buildTextField(
              obscureText: true,
              hintText: "Enter your Password",
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: Icon(
                  Icons.visibility,
                  color: HexColor(AppColors.tabBarColor),
                ),
              ),
            ),
            _buildTextField(
              obscureText: true,
              hintText: "Enter your confirm password",
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: Icon(
                  Icons.visibility,
                  color: HexColor(AppColors.tabBarColor),
                ),
              ),
            ),
            _buildLogInButton(),

            SizedBox(height: 10.h),
            _buildSignUpNavigationRow(),
          ],
        ),
      ),
    );
  }

  Widget buildSignUpHeading() {
    return Text(
      AppTexts.signUpHeading,
      style: TextStyle(
        color: HexColor(AppColors.tabBarColor),
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildUserIconLogo() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        alignment: Alignment.center,
        height: 95.h,
        width: 95.h,
        decoration: BoxDecoration(
          color: HexColor(AppColors.tabBarColor),
          borderRadius: BorderRadius.circular(200),
        ),
        child: Icon(Icons.person, color: Colors.white, size: 80),
      ),
    );
  }

  Widget _buildTextField({
    required String hintText,
    Widget? suffixIcon,
    bool? obscureText,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
      child: TextFormField(
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.black12),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 15.h,
          ),

          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: TextStyle(
            color: HexColor(AppColors.tabBarColor),
            fontFamily: "helvetica",
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: HexColor(AppColors.tabBarColor)),
          ),
        ),
      ),
    );
  }

  Widget _buildLogInButton() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20.h),
      height: 40.h,
      width: 150.w,

      decoration: BoxDecoration(
        color: HexColor(AppColors.tabBarColor),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        AppTexts.signUp,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildSignUpNavigationRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppTexts.alreadyAccount,
          style: TextStyle(color: HexColor(AppColors.tabBarColor)),
        ),
        SizedBox(width: 5.w),
        InkWell(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LogInScreen();
                },
              ),
              (route) => false,
            );
          },
          child: Text(
            AppTexts.logIn,
            style: TextStyle(
              decoration: TextDecoration.underline,

              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
