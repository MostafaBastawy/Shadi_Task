import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadi_systems_task/cubits/app_cubit/app_cubit.dart';
import 'package:shadi_systems_task/cubits/app_cubit/app_states.dart';
import 'package:shadi_systems_task/shared/components/home_screen/bottom_sheet_item.dart';
import 'package:shadi_systems_task/shared/components/home_screen/home-screen_shortcut_builder_item.dart';
import 'package:shadi_systems_task/shared/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  String? pressedButton = 'Home';
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    return BlocBuilder<AppCubit, AppStates>(
      builder: (BuildContext context, state) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(428.w, 200.h),
          child: Stack(
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
                                    fit: BoxFit.fill,
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
                    bottomRight: Radius.circular(200.r),
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
                    bottomRight: Radius.circular(200.r),
                  ),
                  child: Container(
                    width: 280.w,
                    height: 230.h,
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 40.0,
                childAspectRatio: 1 / 1,
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 40.w),
                children: List.generate(
                  cubit.homeScreenShortcuts.length,
                  (index) => HomeScreenShortCutBuilderItem(
                    image: cubit.homeScreenShortcuts[index]['image'],
                    label: cubit.homeScreenShortcuts[index]['label'],
                  ),
                ),
              ),
              SizedBox(height: 200.h),
            ],
          ),
        ),
      ),
    );
  }
}
