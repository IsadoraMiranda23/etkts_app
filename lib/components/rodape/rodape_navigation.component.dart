import 'package:blur/blur.dart';
import 'package:etkts_app/components/rodape_button.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../colors.dart';

class RodapeNavigation extends StatelessWidget {
  final int currentIndex;
  final List<RodapeButtonComponentData> navItems;

  const RodapeNavigation({
    super.key,
    required this.currentIndex,
    required this.navItems,
  });

  List<Widget> buildNavigationItems() {
    return List.generate(navItems.length, (index) {
      final item = navItems[index];
      return Expanded(
        child: RodapeButtonComponent(
          text: item.text,
          svgAsset: item.svgAsset,
          onTap: item.onTap,
          color: currentIndex == index ? MyColors.verde : Colors.white,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78.h,
      width: MediaQuery.of(context).size.width,
      child: Row(children: buildNavigationItems()),
    ).frosted(blur: 10, frostColor: Colors.black);
  }
}
