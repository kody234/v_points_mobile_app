import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme/app_colors.dart';
class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key, required this.label, this.height,
  });


  final String label;
  final double? height;


  @override
  Widget build(BuildContext context) {
    return     Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
          style:  TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal



          ),
        ),
        SizedBox(
          height: 4.h,
        ),


        TextFormField(

          decoration: InputDecoration(
            constraints: BoxConstraints.expand(
              height: height ?? 40.h,
            ),
            hoverColor: Colors.red,
            enabledBorder: OutlineInputBorder(

                borderRadius: BorderRadius.circular(10.r),borderSide: BorderSide.none

            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),borderSide: BorderSide.none

            ),

            filled: true,
            fillColor: ThemeColors().fieldGray,
          ),
        ),

      ],
    );
  }
}