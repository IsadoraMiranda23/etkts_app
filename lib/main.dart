import 'package:etkts_app/env.dart';
import 'package:etkts_app/router.dart';
import 'package:etkts_app/services/graphql.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
          ),
        ),
      ),
      routerConfig: router,
    );
  }
}
