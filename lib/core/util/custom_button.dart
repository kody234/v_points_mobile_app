import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme/app_colors.dart';



class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.height, required this.width, required this.title,required this.borderColor,required  this.titleColor,
 required this.backgroundColor, required this.onTap });


 final double height;
 final double width;

 final String title;
 final Color borderColor;
 final Color? titleColor;
 final Color? backgroundColor;
 final VoidCallback onTap;



  @override
  Widget build(BuildContext context) {



    return SizedBox(
      height: height,
      width:  double.infinity,

      child:
      OutlinedButton(onPressed: onTap,style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(
        side: BorderSide(
          color: borderColor,
        ),

        borderRadius: BorderRadius.circular(10.r),),backgroundColor: backgroundColor


      ), child:  Text(title,style: TextStyle(
          color: titleColor,
      ),),),
    );
  }
}