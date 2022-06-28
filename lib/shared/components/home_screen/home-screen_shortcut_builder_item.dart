import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadi_systems_task/shared/styles/colors.dart';

class HomeScreenShortCutBuilderItem extends StatelessWidget {
  String? image;
  String? label;
  HomeScreenShortCutBuilderItem({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: figmaFFFFFF,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: defaultBoxShadow,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image!,
          ),
          SizedBox(height: 10.h),
          Text(
            label!,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, color: figma595959),
          ),
        ],
      ),
    );
  }
}
