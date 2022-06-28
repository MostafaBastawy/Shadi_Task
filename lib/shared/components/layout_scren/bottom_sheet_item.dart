import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadi_systems_task/cubits/app_cubit/app_cubit.dart';
import 'package:shadi_systems_task/cubits/app_cubit/app_states.dart';
import 'package:shadi_systems_task/shared/styles/colors.dart';

class BottomSheetBuilderItem extends StatelessWidget {
  String? label;
  IconData? icon;
  Function? onTap;
  String? pressedButton;
  BottomSheetBuilderItem({
    Key? key,
    required this.label,
    required this.icon,
    required this.onTap,
    required this.pressedButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (BuildContext context, state) => GestureDetector(
        onTap: () => onTap!(),
        child: Container(
          width: 70.w,
          height: 50.h,
          decoration: BoxDecoration(
              color:
                  pressedButton == label ? figmaFFFFFF.withOpacity(0.4) : null,
              borderRadius: BorderRadius.circular(10.r)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon!,
                color: figmaFFFFFF,
                size: 30,
              ),
              Text(
                label!,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                  color: figmaFFFFFF,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
