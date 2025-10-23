// arquivo: components/rodape/rodape_navigation.component.dart
import 'package:flutter/material.dart';
import '../../colors.dart';

class RodapeNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const RodapeNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });


  final List<Map<String, String>> navigationItems = const [
    {'icon': 'assets/icons/homeBottom.png', 'label': 'Home'},
    {'icon': 'assets/icons/friendsBottom.png', 'label': 'Amigos'},
    {'icon': 'assets/icons/carteiraBottom.png', 'label': 'Carteira'},
    {'icon': 'assets/icons/localBottom.png', 'label': 'Mapa'},
    {'icon': 'assets/icons/perfil.png', 'label': 'Perfil'},
  ];


  Color getIconColor(int index) {
    return currentIndex == index ? MyColors.verde : Colors.grey;
  }


  Widget _buildNavigationIcon(int index, String assetPath) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        getIconColor(index),
        BlendMode.srcIn,
      ),
      child: Image.asset(
        assetPath,
        width: 24,
        height: 24,
      ),
    );
  }


  List<BottomNavigationBarItem> buildNavigationItems() {
    return List.generate(navigationItems.length, (index) {
      final item = navigationItems[index];
      return BottomNavigationBarItem(
        icon: _buildNavigationIcon(index, item['icon']!),
        activeIcon: _buildNavigationIcon(index, item['icon']!),
        label: item['label'],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: MyColors.preto.withValues(alpha: 0.3),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ColorFilter.mode(
            MyColors.preto.withValues(alpha: 0.7),
            BlendMode.srcOver,
          ),
          child: Container(
            height: kBottomNavigationBarHeight + MediaQuery.of(context).padding.bottom,
            decoration: BoxDecoration(
              color: MyColors.preto.withValues(alpha: 0.6),
              border: Border(
                top: BorderSide(
                  color: MyColors.preto.withValues(alpha: 0.8),
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: MyColors.verde,
              unselectedItemColor: Colors.grey,
              currentIndex: currentIndex,
              onTap: onTap,
              items: buildNavigationItems(),
            ),
          ),
        ),
      ),
    );
  }
}