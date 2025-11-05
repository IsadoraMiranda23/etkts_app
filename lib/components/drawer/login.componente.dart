import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/pages/login.page.dart';
import 'package:etkts_app/services/snackbar.service.dart';
import 'package:etkts_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:etkts_app/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LoginComponent extends StatefulWidget {
  const LoginComponent({super.key});

  @override
  State<LoginComponent> createState() => _LoginComponentState();
}

class _LoginComponentState extends State<LoginComponent> {
  final TextEditingController email = TextEditingController();
  final TextEditingController senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: 19.h, bottom: 50.h),
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            child: SvgPicture.asset(
                              "assets/icons/back_button.svg",
                              width: 30.w,
                              height: 30.h,
                              colorFilter: ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
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
                SizedBox(height: 34.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.w),
                  child: Text("E-mail", style: MyTypography.poppinsRegular15),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  height: 32.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.w),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.top,
                      onTapOutside: (event) =>
                          FocusManager.instance.primaryFocus?.unfocus(),
                      controller: email,
                      style: MyTypography.poppinsRegular10,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(11.r)),
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(11.r)),
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 23.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.w),
                  child: Text("Senha", style: MyTypography.poppinsRegular15),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  height: 32.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.w),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.top,
                      onTapOutside: (event) =>
                          FocusManager.instance.primaryFocus?.unfocus(),
                      controller: senha,
                      style: MyTypography.poppinsRegular10,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(11.r)),
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(11.r)),
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 11.h),
                Center(
                  child: TextButton(
                    onPressed: () => {},
                    child: Text(
                      "esqueceu a senha?",
                      style: MyTypography.interRegular12,
                    ),
                  ),
                ),
                SizedBox(height: 11.h),
                SizedBox(
                  height: 32.h,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.w),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.black,
                        side: BorderSide(color: MyColors.verde, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10.r),
                        ),
                      ),
                      onPressed: () {
                        context.pop();
                        AppState.isLogged.value = true;
                      },
                      child: Text(
                        'Entrar',
                        style: MyTypography.poppinsRegular15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.w),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Divider(
                            color: Colors.black,
                            thickness: 2,
                            height: 1,
                          ),
                        ),
                        Spacer(flex: 1),
                        Text('ou', style: MyTypography.poppinsRegular15),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 2,
                          child: Divider(
                            color: Colors.black,
                            thickness: 2,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 23.h),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 23.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/logos/google.png', width: 96.w),
                      Image.asset(
                        'assets/logos/apple.png',
                        height: 37.h,
                        width: 101.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 36.h),
                SizedBox(
                  height: 32.h,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.w),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.black,
                        side: BorderSide(color: MyColors.roxo, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10.r),
                        ),
                      ),
                      onPressed: () {
                        context.pop();
                        AppState.isLogged.value = true;
                      },
                      child: Text(
                        'cadastrar',
                        style: MyTypography.poppinsRegular15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
