import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RodapeButtonComponentData {
  final String text;
  final String svgAsset;
  final void Function(BuildContext context) onTap;
  final bool isSelected;

  const RodapeButtonComponentData({
    required this.text,
    required this.svgAsset,
    required this.onTap,
    this.isSelected = false,
  });
}

class RodapeButtonComponent extends StatelessWidget {
  const RodapeButtonComponent({
    super.key,
    required this.text,
    required this.svgAsset,
    required this.onTap,
    required this.color,
  });

  final String text;
  final String svgAsset;
  final void Function(BuildContext context) onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgAsset,
            width: 20.w,
            height: 20.h,
            colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0.h),
            child: Text(
              text,
              style: TextStyle(fontSize: 10.sp, color: color),
            ),
          ),
        ],
      ),
    );
  }
}
