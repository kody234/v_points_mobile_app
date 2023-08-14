import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_points_ecommerce_app/features/auth/presentation/page/signup.dart';

import '../../../../config/theme/app_colors.dart';
import '../../../../core/util/custom_button.dart';
import '../../../../core/util/custom_textfield.dart';






class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 114.h,
            ),

            Text('Log into your account',
              style:  TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal



              ),
            ),


            SizedBox(
              height: 58.h,
            ),
 const CustomTextForm(label: 'UserName',),
            SizedBox(
              height: 17.h,
            ),
            const CustomTextForm(label: 'Password',),

            SizedBox(
              height: 17.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forget Password',
                  style:  TextStyle(
                      color: ThemeColors().darkBlue,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal



                  ),
                ),
              ],
            ),

            SizedBox(
              height: 60.h,
            ),

            CustomButton(
              height: 24.h,
              width: double.infinity,
              backgroundColor: ThemeColors().darkBlue,
              title: 'Log In',
              titleColor: Colors.white, borderColor: ThemeColors().darkBlue, onTap: () {  },
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomButton(
              height: 24.h,
              width: double.infinity,
              backgroundColor: ThemeColors().skyBlue,
              title: 'Log in with facebook',
              titleColor: Colors.white, borderColor: ThemeColors().skyBlue, onTap: () {  },
            ),
            const SizedBox(
              height:12,
            ),

            Center(
              child: RichText(text: TextSpan(
                text:'Don’t have an account?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize:14.sp,
                  fontWeight: FontWeight.w500
                ),

                children:  <TextSpan>[
                  TextSpan(
                    text:' Signup',
                    recognizer: TapGestureRecognizer()..onTap = (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const SignUp(),),);
                    },

                    style: TextStyle(
                        color: ThemeColors().darkBlue,
                        fontSize:14.sp,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),),
            ),
          ],
        ),
      ),
    );
  }

}


