import 'package:etkts_app/colors.dart';
import 'package:etkts_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeButtonComponentData {
  final String text;
  final String svgAsset;
  final void Function(BuildContext context) onTap;

  const HomeButtonComponentData({
    required this.text,
    required this.svgAsset,
    required this.onTap,
  });
}

class HomeButtonComponent extends StatelessWidget {
  const HomeButtonComponent({
    super.key,
    required this.text,
    required this.svgAsset,
    required this.onTap,
  });

  final String text;
  final String svgAsset;
  final void Function(BuildContext context) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(context),
      child: Column(
        children: [
          Container(
            width: 50.w,
            height: 45.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.zero,
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.zero,
              ),
              color: MyColors.cinzaEscuro.withAlpha(217),
            ),
            child: Center(
              child: SvgPicture.asset(
                svgAsset,
                height: 20.h,
                width: 20.w,
                colorFilter: ColorFilter.mode(MyColors.verde, BlendMode.srcIn),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.h),
            child: Text(
              text,
              style: MyTypography.interSemiBold9,
            ),
          ),
        ],
      ),
    );
  }
}
