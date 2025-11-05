import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBarComponent extends StatefulWidget
    implements PreferredSizeWidget {
  const HomeAppBarComponent({super.key});

  @override
  State<HomeAppBarComponent> createState() => _HomeAppBarComponentState();

  @override
  Size get preferredSize => Size.fromHeight(49.h);
}

class _HomeAppBarComponentState extends State<HomeAppBarComponent> {
  bool balanceVisible = false;
  bool searchExpanded = false;
  TextEditingController searchController = TextEditingController();

  List<Widget> renderBalance(bool isLogged) {
    return [
      if (isLogged)
      Image.asset(
        'assets/images/userAvatar.png',
        width: 39.w,
        height: 39.h,
        fit: BoxFit.contain,
      ),
      if (isLogged)
      SizedBox(width: 9.w),
      if (isLogged)
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Olá!', style: MyTypography.poppinsRegular11),
          Text(
            balanceVisible ? 'R\$ 100,00' : '*****',
            style: MyTypography.poppinsSemiBold20,
          ),
        ],
      ),
      if (isLogged)
      SizedBox(width: 8.w),
      if (isLogged)
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 6.h),
          child: GestureDetector(
            onTap: () {
              setState(() {
                balanceVisible = !balanceVisible;
              });
            },
            child: Icon(
              balanceVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.white,
              size: 20.dg
            ),
          ),
        ),
      ),
      const Spacer(),
      GestureDetector(
        onTap: () {
          setState(() {
            searchExpanded = true;
          });
        },
        child: Icon(Icons.search, color: Colors.white, size: 28.dg),
      ),
      SizedBox(width: 12.w),
    ];
  }

  List<Widget> renderSearch() {
    return [
      Expanded(
        child: TextField(
          controller: searchController,
          autofocus: true,
          style: TextStyle(color: Colors.white, fontSize: 16.sp),
          decoration: const InputDecoration(
            isDense: true,
            hintText: 'Pesquisar...',
            hintStyle: TextStyle(color: Colors.white),
            border: InputBorder.none,
          ),
          onSubmitted: (value) {
            debugPrint('Texto pesquisado: $value');
          },
        ),
      ),
      IconButton(
        icon: const Icon(Icons.close, color: Colors.white, size: 20),
        onPressed: () {
          setState(() {
            searchExpanded = false;
            searchController.clear();
          });
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppState.isLogged,
      builder: (context, value, child) {
        return SizedBox(
          width: double.infinity,
          height: widget.preferredSize.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                behavior: HitTestBehavior.translucent,
                child: SizedBox(
                  width: 43.w,
                  height: double.infinity,
                  child: Icon(Icons.menu, color: Colors.white),
                ),
              ),
              if (!searchExpanded) ...renderBalance(value),
              if (searchExpanded) ...renderSearch(),
            ],
          ),
        );
      }
    );
  }
}
