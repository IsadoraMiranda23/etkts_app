import 'package:etkts_app/pages/login.page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  static const routeName = '/';

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(init);
  }

  void init(Duration _) async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    context.push(LoginPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logos/logoCompletoVerde.png',
              width: 156,
              height: 128,
            ),
          ],
        ),
      ),
    );
  }
}
