import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_tracker_app/constants/colors.dart';
import 'package:task_tracker_app/constants/texts.dart';
import 'package:task_tracker_app/screens/sign_up_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(AppColors.homeScreenBgColor),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50.h),
              _buildLogInHeading(),
              _buildUserIconLogo(),
              SizedBox(height: 40.h),
              _buildTextField(hintText: "Enter your email"),
              _buildTextField(
                hintText: "Enter your password",
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
      ),
    );
  }

  Widget _buildLogInHeading() {
    return Text(
      AppTexts.logInHeading,
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
        margin: EdgeInsets.only(top: 50.h),
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

  Widget _buildTextField({required String hintText, Widget? suffixIcon}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
      child: TextFormField(
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
        AppTexts.logIn,
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
          AppTexts.notAccount,
          style: TextStyle(color: HexColor(AppColors.tabBarColor)),
        ),
        SizedBox(width: 5.w),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpScreen()),
            );
          },
          child: Text(
            AppTexts.signUp,
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
