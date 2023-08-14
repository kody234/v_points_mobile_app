import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/theme/app_colors.dart';



class PageIndicators extends StatefulWidget {

  PageIndicators({
    super.key, required this.pageName,  required this.index,required this.pageIndex, required this.onTap, this.activeSvgPath, this.inactiveSvgPath,
  });



  final String pageName;
  final String? activeSvgPath;
  final int index;
  final int pageIndex;
  final VoidCallback onTap;
  final String? inactiveSvgPath;



  @override
  State<PageIndicators> createState() => _PageIndicatorsState();
}

class _PageIndicatorsState extends State<PageIndicators> {





  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 36.h,

        padding: EdgeInsets.symmetric(horizontal: 5.w),

        decoration: BoxDecoration(color:  Colors.white,



          gradient: widget.index == widget.pageIndex?  LinearGradient(stops:[0,1],begin: Alignment.centerLeft,end:Alignment.centerRight,colors: [
            ThemeColors().darkBlue,
            ThemeColors().skyBlue,
          ]): null,
          borderRadius: BorderRadius.circular(5.r),),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            widget.index == widget.pageIndex?    SvgPicture.asset('assets/svg/${widget.activeSvgPath}',color: Colors.white,) : SvgPicture.asset('assets/svg/${widget.inactiveSvgPath}',),
            SizedBox(
              width:8.w ,
            ),
            Text(widget.index == widget.pageIndex? widget.pageName : 'home',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  color: Colors.white
              ),),
          ],
        ),

      ),
    );
  }
}