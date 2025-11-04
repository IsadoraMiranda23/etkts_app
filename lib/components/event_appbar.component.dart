import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class EventAppCarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  const EventAppCarComponent({super.key});

  @override
  Size get preferredSize => Size.fromHeight(49.h);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                if (context.canPop()) {
                  context.pop();
                }
              },
              child: SvgPicture.asset(
                'assets/icons/back_button.svg',
                height: 25.h,
                width: 25.w,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
            InkWell(
              onTap: () {
                if (context.canPop()) {
                  context.pop();
                }
              },
              child: SvgPicture.asset(
                'assets/icons/shopping_cart.svg',
                height: 22.h,
                width: 22.w,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
