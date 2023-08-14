import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_points_ecommerce_app/features/auth/presentation/page/login.dart';
import 'package:v_points_ecommerce_app/features/auth/presentation/page/signup.dart';

import '../../../../config/theme/app_colors.dart';
import '../../../../core/util/custom_button.dart';





class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 61.h,
              ),

              Text('Where shopping\nMeets Social.Unleash\nYour Style,Connect\nWith Smile',
                style:  TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal



                ),
              ),

              SizedBox(
                height: 37.h,
              ),

              Container(
                height: 302.h,
                width: 306.w,
                decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),
              ),
              SizedBox(
                height: 69.h,
              ),
              CustomButton(height: 26.5.h, width: double.infinity.w, title: 'Login', borderColor: ThemeColors().darkBlue, titleColor: null, backgroundColor: null, onTap: () { Navigator.push(context, MaterialPageRoute(builder: (_)=> const LoginScreen())); },),
              SizedBox(
                height: 25.h,
              ),
              CustomButton(height: 26.5.h, width: double.infinity.w, title: 'SignUp', borderColor: ThemeColors().darkBlue, titleColor: Colors.white, backgroundColor:ThemeColors().darkBlue, onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const SignUp()));
              } ,),
            ],
          ),
        ),
      ),


    );
  }
}


