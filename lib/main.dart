import 'package:etkts_app/env.dart';
import 'package:etkts_app/router.dart';
import 'package:etkts_app/services/graphql.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Env.init();
  GraphQLService.init();
  runApp(
    ScreenUtilInit(
      designSize : Size ( 390 , 844 ),
      builder: (_, _) => MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Etkts',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: router,
    );
  }
}
