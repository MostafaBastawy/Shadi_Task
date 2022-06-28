import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadi_systems_task/cubits/app_cubit/app_cubit.dart';
import 'package:shadi_systems_task/cubits/app_cubit/app_states.dart';
import 'package:shadi_systems_task/modules/home_screen/home_screen.dart';
import 'package:shadi_systems_task/modules/setting_screen/setting_screen.dart';
import 'package:shadi_systems_task/shared/components/home_screen/home_screen_app_bar.dart';
import 'package:shadi_systems_task/shared/components/layout_scren/bottom_sheet_item.dart';
import 'package:shadi_systems_task/shared/styles/colors.dart';

class LayoutScreen extends StatelessWidget {
  String? pressedButton = 'Home';
  LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    return BlocBuilder<AppCubit, AppStates>(
      builder: (BuildContext context, state) => Scaffold(
        appBar: pressedButton == 'Home'
            ? PreferredSize(
                preferredSize: Size(428.w, 200.h),
                child: const HomeScreenAppBar(),
              )
            : PreferredSize(
                preferredSize: Size(428.w, 200.h),
                child: const HomeScreenAppBar(),
              ),
        bottomSheet: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            width: 428.w,
            height: 100.h,
            color: figma49BFBE,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomSheetBuilderItem(
                      label: 'Home',
                      icon: Icons.house,
                      pressedButton: pressedButton,
                      onTap: () {
                        pressedButton = 'Home';
                        cubit.emit(AppRefreshState());
                      },
                    ),
                    BottomSheetBuilderItem(
                      label: 'Settings',
                      icon: Icons.settings,
                      pressedButton: pressedButton,
                      onTap: () {
                        pressedButton = 'Settings';
                        cubit.emit(AppRefreshState());
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: pressedButton == 'Home' ? HomeScreen() : SettingScreen(),
      ),
    );
  }
}
