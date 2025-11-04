import 'package:blur/blur.dart';
import 'package:etkts_app/components/rodape_button.component.dart';
import 'package:etkts_app/services/snackbar.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../colors.dart';

class RodapeNavigationItemData {
  final String text;
  final String avgAsset;

  RodapeNavigationItemData({required this.text, required this.avgAsset});
}

class RodapeNavigation extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTap;
  late final List<RodapeButtonComponentData> navItems = [];

  RodapeNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  }) {
    final items = [
      RodapeNavigationItemData(text: "Home", avgAsset: "assets/icons/home.svg"),
      RodapeNavigationItemData(
        text: "Amigos",
        avgAsset: "assets/icons/friend_add.svg",
      ),
      RodapeNavigationItemData(
        text: "Carteira",
        avgAsset: "assets/icons/carteira.svg",
      ),
      RodapeNavigationItemData(
        text: "Mapa",
        avgAsset: "assets/icons/pinpoint.svg",
      ),
      RodapeNavigationItemData(
        text: "Perfil",
        avgAsset: "assets/icons/profile.svg",
      ),
    ];
    for (var index = 0; index < items.length; index++) {
      final element = items[index];
      navItems.add(
        RodapeButtonComponentData(
          text: element.text,
          svgAsset: element.avgAsset,
          onTap: (context) {
            onTap(index);
            SnackbarService.showEmConstrucao(context);
          },
        ),
      );
    }
  }

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
