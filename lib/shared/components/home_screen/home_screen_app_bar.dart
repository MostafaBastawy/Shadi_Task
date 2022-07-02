import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadi_systems_task/shared/styles/colors.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 428.w,
          height: 250.h,
          child: Padding(
            padding: EdgeInsetsDirectional.only(end: 10.w),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: 25.r,
                      backgroundColor: figma49BFBE,
                      child: Container(
                        width: 45.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                            color: figma49BFBE,
                            borderRadius: BorderRadius.circular(100.r),
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/profile_image.jpeg',
                              ),
                              fit: BoxFit.cover,
                            )),
                      )),
                  Text(
                    'Ahmed',
                    style: TextStyle(
                      color: figma595959,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(300.r),
            ),
            child: Container(
              width: 300.w,
              height: 250.h,
              color: figma3CA2A1,
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(300.r),
            ),
            child: Container(
              width: 280.w,
              height: 200.h,
              color: figma49BFBE,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(
                      color: figmaFFFFFF,
                      fontWeight: FontWeight.w700,
                      fontSize: 40.sp,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Image.asset(
                    'assets/images/umbrella.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
