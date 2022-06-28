import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadi_systems_task/shared/styles/colors.dart';

class SettingScreenAppBar extends StatelessWidget {
  const SettingScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20.r),
        bottomRight: Radius.circular(20.r),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        color: figma004E41,
        width: 428.w,
        height: 100.h,
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 30.h),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: figmaFFFFFF,
              ),
              Text(
                'Back',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: figmaFFFFFF,
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(width: 70.w),
              Text(
                'Settings',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: figmaFFFFFF,
                  fontSize: 20.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
