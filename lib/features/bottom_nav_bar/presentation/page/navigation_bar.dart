
import 'dart:ffi';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:v_points_ecommerce_app/features/bottom_nav_bar/presentation/page/home_page.dart';

import '../../../../config/theme/app_colors.dart';
import '../widgets/page_indicators.dart';


class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  int pageIndex = 0;



  void changeIndex(int index){
    setState(() {
      pageIndex = index;
      debugPrint(pageIndex.toString());
    });
  }

  @override
  Widget build(BuildContext context) {

   List<Widget> pages = [
     const HomePage(),

     Container(),
     Container(),
     Container(),

   ];


    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

Expanded(child: pages[pageIndex]),




          Container(
            height: 76.h,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal:24.w ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PageIndicators(pageName: 'Home',  index: 0, pageIndex: pageIndex, activeSvgPath: 'Home.svg',inactiveSvgPath:'Home1.svg',onTap:(){
                  changeIndex(0);
                },),
                PageIndicators(pageName: 'Explore',  index: 1,pageIndex: pageIndex, activeSvgPath: 'explore.svg',inactiveSvgPath:'explore1.svg',onTap:(){
          changeIndex(1);
          }, ),
                PageIndicators(pageName: 'Notification',  index: 2, pageIndex: pageIndex,activeSvgPath: 'Notification.svg',inactiveSvgPath:'Notification1.svg', onTap: () { changeIndex(2);  },),
                PageIndicators(pageName: 'Profile', index: 3,pageIndex: pageIndex, activeSvgPath: 'Profile.svg',inactiveSvgPath:'Profile.svg',onTap: () {  changeIndex(3); },)

              ],
            ),

          )
        ]


        ,
      ),
    );
  }
}


