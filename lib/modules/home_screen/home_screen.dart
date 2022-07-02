import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadi_systems_task/cubits/home_cubit/home_cubit.dart';
import 'package:shadi_systems_task/shared/components/home_screen/home_screen_shortcut_builder_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              HomeCubit.get(context).homeScreenShortcuts.length,
              (index) => HomeScreenShortCutBuilderItem(
                image: HomeCubit.get(context).homeScreenShortcuts[index]
                    ['image'],
                label: HomeCubit.get(context).homeScreenShortcuts[index]
                    ['label'],
              ),
            ),
          ),
          SizedBox(height: 130.h),
        ],
      ),
    );
  }
}
