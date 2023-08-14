import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:v_points_ecommerce_app/config/theme/app_colors.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  AlignmentGeometry alignmentGeometry = Alignment.centerLeft;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(

        children: [



          Container(
            height: 50.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                ThemeColors().darkBlue,
                ThemeColors().skyBlue
              ],)
            ),

            child: AnimatedAlign(alignment: alignmentGeometry,
            duration: const Duration(seconds: 1),
            child: SvgPicture.asset('assets/svg/loanBanner.svg')),
          ),
          Container(
            height: 58.h,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                SvgPicture.asset('assets/svg/vpoint_logo.svg',width: 113.w,height:27.8.h ,),

                Container(
                  height: 40.h,
                  width: 40.w,


                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffEBEAEA)


                  ),child: SvgPicture.asset('assets/svg/cart.svg',height: 24.h,width: 24.w,),
                )
              ],
            ),
            )
        ],
      ),
    );
  }
}
