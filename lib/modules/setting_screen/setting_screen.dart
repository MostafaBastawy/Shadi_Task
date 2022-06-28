import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:shadi_systems_task/cubits/setting_cubit/Setting_cubit.dart';
import 'package:shadi_systems_task/cubits/setting_cubit/setting_states.dart';
import 'package:shadi_systems_task/shared/styles/colors.dart';

class SettingScreen extends StatelessWidget {
  bool? switchButton;
  SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingCubit cubit = SettingCubit.get(context);
    return BlocBuilder<SettingCubit, SettingStates>(
      builder: (BuildContext context, state) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dark Mode',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: figma595959,
                  ),
                ),
                const Spacer(),
                FlutterSwitch(
                  activeColor: const Color(0xAFF8C322),
                  inactiveColor: const Color(0xAF69768F),
                  width: 51.0,
                  height: 26.0,
                  toggleSize: 25.0,
                  value: switchButton != null ? switchButton! : false,
                  borderRadius: 30.0,
                  padding: 1.0,
                  showOnOff: false,
                  onToggle: (bool value) {
                    switchButton = value;
                    cubit.emit(SettingRefreshState());
                  },
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Language',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: figma595959,
                  ),
                ),
                const Spacer(),
                Container(
                  width: 200.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      width: 1.0,
                      color: figma595959,
                    ),
                  ),
                  child: Table(
                    border: null,
                    children: [
                      TableRow(
                        children: [
                          Container(
                            height: 35.h,
                            child: Center(
                              child: Text(
                                'English',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: figma07826D,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 1.h,
                            color: figma595959,
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 35.h,
                            child: Center(
                              child: Text(
                                'العربية',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: figma07826D,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 30.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              width: 350.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: figma004E41,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: figmaFFFFFF,
                    size: 20.0,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: figmaFFFFFF,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: figmaFFFFFF,
                    size: 20.0,
                  ),
                  SizedBox(width: 10.w),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
