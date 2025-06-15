import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:task_tracker_app/constants/colors.dart';
import 'package:task_tracker_app/constants/images.dart';
import 'package:task_tracker_app/constants/lists.dart';
import 'package:task_tracker_app/constants/texts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late double height;
  late double width;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      drawer: _buildCustomDrawer(),
      backgroundColor: HexColor(AppColors.homeScreenBgColor),
      body: Column(
        children: [
          _buildCustomAppBar(),
          _buildCustomTabBar(),
          _buildCategoriesHeadingRow(),
          _buildCategoriesList(),
          Container(
            margin: EdgeInsets.only(top: height * 0.040),
            height: height * 0.440,
            width: double.infinity,
            decoration: BoxDecoration(
              color: HexColor(AppColors.greyColor),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: height * 0.040),
                Row(
                  children: [
                    SizedBox(width: width * 0.100),
                    Text(
                      AppTexts.taskList,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: width * 0.290),
                      height: height * 0.055,
                      width: width * 0.270,
                      decoration: BoxDecoration(
                        color: HexColor(AppColors.tabBarColor),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        AppTexts.addTask,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.010),
                Divider(
                  height: 3,
                  color: HexColor("#EAEAEA"),
                  indent: width * 0.080,
                  endIndent: width * 0.080,
                ),

                Container(
                  margin: EdgeInsets.only(top: height * 0.010),
                  height: height * 0.230,
                  width: double.infinity,
                  // color: Colors.black12,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: width * 0.100,
                          ),
                          height: height * 0.060,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade100,
                                spreadRadius: 1,
                                blurRadius: 17,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: width * 0.080),
                                height: height * 0.040,
                                width: width * 0.080,
                                // color: Colors.red,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: width * 0.050),
                                height: height * 0.040,
                                width: width * 0.390,
                                // color: Colors.red,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: width * 0.050),
                                height: height * 0.040,
                                width: width * 0.080,
                                // color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: height * 0.015),
                  height: height * 0.060,
                  width: width * 0.450,
                  decoration: BoxDecoration(
                    color: HexColor(AppColors.tabBarColor),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    AppTexts.selectAllTask,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomAppBar() {
    return Container(
      alignment: Alignment.bottomCenter,
      height: height * 0.150,
      width: double.infinity,
      // color: Colors.red,
      child: Row(
        children: [
          SizedBox(width: width * 0.050),
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu, color: Colors.grey),
          ),
          Text(
            AppTexts.homeAppBar,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(width: width * 0.500),
          Container(
            height: height * 0.040,
            width: width * 0.085,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomTabBar() {
    return Container(
      margin: EdgeInsets.only(top: height * 0.020),
      height: height * 0.080,
      width: width * 0.800,
      decoration: BoxDecoration(
        color: HexColor(AppColors.tabBarColor),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: width * 0.020),
            height: height * 0.055,
            width: width * 0.370,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              AppLists.homeMenuList[0],
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: width * 0.020),
            height: height * 0.055,
            width: width * 0.370,
            decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              AppLists.homeMenuList[1],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesHeadingRow() {
    return Container(
      margin: EdgeInsets.only(top: height * 0.020),
      height: height * 0.070,
      width: double.infinity,
      // color: Colors.red,
      child: Row(
        children: [
          SizedBox(width: width * 0.100),
          Text(
            AppTexts.homeCategories,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(width: width * 0.310),
          Container(
            height: height * 0.035,
            width: width * 0.075,
            decoration: BoxDecoration(
              color: HexColor(AppColors.greyColor),
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(AppImages.HOME_TAB_BAR_ICON),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.025),
            alignment: Alignment.center,
            height: height * 0.035,
            width: width * 0.130,
            decoration: BoxDecoration(
              color: HexColor(AppColors.tabBarColor),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              AppTexts.add,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesList() {
    return Container(
      margin: EdgeInsets.only(left: width * 0.100),
      height: height * 0.175,
      width: double.infinity,
      // color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomBendOutwardContainer(
              index: index,
              height: height * 0.100,
              width: width,
            ),
          );
        },
      ),
    );
  }

  Drawer _buildCustomDrawer() {
    return Drawer(
      backgroundColor: HexColor(AppColors.homeScreenBgColor),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: height * 0.060),
            height: height * 0.2,
            width: double.infinity,
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: width * 0.050,
                    top: height * 0.020,
                  ),
                  height: height * 0.080,
                  width: width * 0.170,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: height * 0.020,
                    left: width * 0.050,
                  ),
                  height: height * 0.030,
                  width: width * 0.500,
                  color: Colors.yellow,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: height * 0.010,
                    left: width * 0.050,
                  ),
                  height: height * 0.030,
                  width: width * 0.500,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.010),
          Divider(height: 1, color: Colors.grey.shade300),
        ],
      ),
    );
  }
}

class CustomBendOutwardContainer extends StatelessWidget {
  final double height;
  final double width;
  final int index;

  const CustomBendOutwardContainer({
    super.key,
    required this.height,
    required this.width,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OutwardTopRightClipper(),
      child: Container(
        height: height * 0.300,
        width: width * 0.300,
        decoration: BoxDecoration(
          color: HexColor(AppLists.homeCategoryColorList[index]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: height * 0.120, left: width * 0.030),
              height: height * 0.550,
              width: width * 0.120,
              decoration: BoxDecoration(
                border: Border.all(
                  color: HexColor(AppLists.homeCategoryColorList[index]),
                  width: 1,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(AppLists.homeCategoryImageList[index]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.040,
                top: height * 0.150,
              ),
              child: Text(
                AppLists.homeCategoryNameList[index],
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.040, top: height * 0.020),
              height: height * 0.350,
              width: width * 0.20,
              // color: Colors.red,
              child: Text(
                "+03 task",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OutwardTopRightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const radiusTopLeft = 30.0;
    const radiusBottom = 30.0;
    final arcRadius = size.height / 2;

    Path path = Path();

    // Start from left edge slightly down
    path.moveTo(0, radiusTopLeft);

    // Top-left corner curve
    path.quadraticBezierTo(0, 0, radiusTopLeft, 0);

    // Line to before the arc starts
    path.lineTo(size.width - arcRadius, 0);

    // Top-right outward curve
    path.arcToPoint(
      Offset(size.width, arcRadius),
      radius: Radius.circular(arcRadius),
      clockwise: true, // outward
    );

    // Right side down
    path.lineTo(size.width, size.height - radiusBottom);

    // Bottom-right corner curve
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width - radiusBottom,
      size.height,
    );

    // Bottom line to bottom-left
    path.lineTo(radiusBottom, size.height);

    // Bottom-left corner curve
    path.quadraticBezierTo(0, size.height, 0, size.height - radiusBottom);

    // Close the shape
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
