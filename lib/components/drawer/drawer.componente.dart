import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/pages/login.page.dart';
import 'package:etkts_app/services/snackbar.service.dart';
import 'package:flutter/material.dart';
import 'package:etkts_app/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class DrawerComponente extends StatefulWidget {
  const DrawerComponente({super.key});

  @override
  State<DrawerComponente> createState() => _DrawerComponenteState();
}

class _DrawerComponenteState extends State<DrawerComponente> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(bottom: 84.h),
        child: Drawer(
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: const BoxDecoration(
              color: MyColors.cinzaMedioEscuroTransparente,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(42),
                topLeft: Radius.circular(42),
                bottomRight: Radius.circular(42),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 23.w,
                      vertical: 29.h,
                    ),
                    child: Stack(
                      alignment: AlignmentGeometry.center,
                      children: [
                        Positioned(
                          left: 0,
                          child: GestureDetector(
                            onTap: () {
                              context.pop();
                            },
                            child: SvgPicture.asset("assets/icons/back_button.svg", width: 30.w, height: 30.h, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),),
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/logo_branco.svg',
                          width: 47.w,
                          height: 38.h,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(color: Colors.white, height: 3, thickness: 3),
                SizedBox(height: 43.h),
                ListTile(
                  leading: SizedBox(
                    width: 30.w,
                    height: 30.h,
                    child: SvgPicture.asset("assets/icons/money_bill.svg", width: 18.w, height: 18.h, colorFilter: ColorFilter.mode(MyColors.verde, BlendMode.srcIn)),
                  ),
                  title: Row(
                    children: [
                      Text(
                        "Adicionar crédito",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Spacer(),
                      SvgPicture.asset("assets/icons/arrow.svg", width: 18.w, height: 18.h, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)),
                    ],
                  ),
                  onTap: () {
                    SnackbarService.showEmConstrucao(context);
                  },
                ),
                ListTile(
                  leading: SizedBox(
                    width: 30.w,
                    height: 30.h,
                    child: SvgPicture.asset("assets/icons/card.svg", width: 18.w, height: 18.h, colorFilter: ColorFilter.mode(MyColors.verde, BlendMode.srcIn)),
                  ),
                  title: Row(
                    children: [
                      Text(
                        "Meus Cartões",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Spacer(),
                      SvgPicture.asset("assets/icons/arrow.svg", width: 18.w, height: 18.h, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)),
                    ],
                  ),
                  onTap: () {
                    SnackbarService.showEmConstrucao(context);
                  },
                ),
                ListTile(
                  leading: SizedBox(
                    width: 30.w,
                    height: 30.h,
                    child: SvgPicture.asset("assets/icons/ticket.svg", width: 18.w, height: 18.h, colorFilter: ColorFilter.mode(MyColors.verde, BlendMode.srcIn)),
                  ),
                  title: Row(
                    children: [
                      Text(
                        "Ingressos",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Spacer(),
                      SvgPicture.asset("assets/icons/arrow.svg", width: 18.w, height: 18.h, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)),
                    ],
                  ),
                  onTap: () {
                    SnackbarService.showEmConstrucao(context);
                  },
                ),
                ListTile(
                  leading: SizedBox(
                    width: 30.w,
                    height: 30.h,
                    child: SvgPicture.asset("assets/icons/transfer.svg", width: 18.w, height: 18.h, colorFilter: ColorFilter.mode(MyColors.verde, BlendMode.srcIn)),
                  ),
                  title: Row(
                    children: [
                      Text(
                        "Transferências",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Spacer(),
                      SvgPicture.asset("assets/icons/arrow.svg", width: 18.w, height: 18.h, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)),
                    ],
                  ),
                  onTap: () {
                    SnackbarService.showEmConstrucao(context);
                  },
                ),
                ListTile(
                  leading: SizedBox(
                    width: 30.w,
                    height: 30.h,
                    child: SvgPicture.asset("assets/icons/profile1.svg", width: 18.w, height: 18.h, colorFilter: ColorFilter.mode(MyColors.verde, BlendMode.srcIn)),
                  ),
                  title: Row(
                    children: [
                      Text(
                        "Perfil",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Spacer(),
                      SvgPicture.asset("assets/icons/arrow.svg", width: 18.w, height: 18.h, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)),
                    ],
                  ),
                  onTap: () {
                    SnackbarService.showEmConstrucao(context);
                  },
                ),
                ListTile(
                  leading: SizedBox(
                    width: 30.w,
                    height: 30.h,
                    child: SvgPicture.asset("assets/icons/cog.svg", width: 18.w, height: 18.h, colorFilter: ColorFilter.mode(MyColors.verde, BlendMode.srcIn)),
                  ),
                  title: Row(
                    children: [
                      Text(
                        "Configurações",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Spacer(),
                      SvgPicture.asset("assets/icons/arrow.svg", width: 18.w, height: 18.h, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn)),
                    ],
                  ),
                  onTap: () {
                    SnackbarService.showEmConstrucao(context);
                  },
                ),
                Spacer(),
                const Divider(color: Colors.white, height: 2, thickness: 3),
                ListTile(
                  leading: SizedBox(
                    width: 29.w,
                    height: 34.h,
                    child: SvgPicture.asset("assets/icons/exit.svg", width: 18.w, height: 18.h, colorFilter: ColorFilter.mode(MyColors.verde, BlendMode.srcIn)),
                  ),
                  title: Text(
                    "Sair",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {
                    context.pop();
                    AppState.isLogged.value = false;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
