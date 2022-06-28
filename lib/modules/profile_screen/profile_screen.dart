import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadi_systems_task/cubits/profile_cubit/profile_cubit.dart';
import 'package:shadi_systems_task/cubits/profile_cubit/profile_states.dart';
import 'package:shadi_systems_task/shared/styles/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProfileCubit cubit = ProfileCubit.get(context);
    return BlocBuilder<ProfileCubit, ProfileStates>(
      builder: (BuildContext context, state) => Scaffold(
        appBar: null,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.settings,
                            color: figma000000,
                            size: 30,
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            'Language',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: figma000000,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30.w),
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          backgroundColor: figmaFFFFFF,
                          radius: 70.r,
                          child: Container(
                            width: 140.w,
                            height: 140.h,
                            decoration: BoxDecoration(
                                color: figmaFFFFFF,
                                borderRadius: BorderRadius.circular(100.r),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/profile_image.jpeg',
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                end: 5.w, bottom: 5.h),
                            child: Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: Icon(
                                Icons.camera_alt,
                                color: figma004E41,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
