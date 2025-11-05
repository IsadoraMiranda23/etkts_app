import 'package:etkts_app/pages/pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import 'app_state.dart';

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: AppState.navigatorKey,
  routes: [
    GoRoute(
      path: LoginPage.routeName,
      name: LoginPage.routeName,
      pageBuilder: (context, state) => NoTransitionPage(child: LoginPage()),
    ),
    GoRoute(
      path: EfetuarPagamentoPage.routeName,
      name: EfetuarPagamentoPage.routeName,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: EfetuarPagamentoPage()),
    ),
    GoRoute(
      path: EsqueceuSenhaPage.routeName,
      name: EsqueceuSenhaPage.routeName,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: EsqueceuSenhaPage()),
    ),
    GoRoute(
      path: HomePage.routeName,
      name: HomePage.routeName,
      pageBuilder: (context, state) => NoTransitionPage(child: HomePage()),
    ),
    GoRoute(
      path: LoadingPage.routeName,
      name: LoadingPage.routeName,
      pageBuilder: (context, state) => NoTransitionPage(child: LoadingPage()),
    ),
    GoRoute(
      path: NotificacoesPage.routeName,
      name: NotificacoesPage.routeName,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: NotificacoesPage()),
    ),
    GoRoute(
      path: TermosCondicoesPage.routeName,
      name: TermosCondicoesPage.routeName,
      pageBuilder: (context, state) =>
          NoTransitionPage(child: TermosCondicoesPage()),
    ),
    GoRoute(
      path: DetalheEventoPage.routeName,
      name: DetalheEventoPage.routeName,
      pageBuilder: (context, state) =>
          CupertinoPage(child: DetalheEventoPage()),
    ),
    GoRoute(
      path: DetalhePratoPage.routeName,
      name: DetalhePratoPage.routeName,
      pageBuilder: (context, state) =>
          CupertinoPage(child: DetalhePratoPage()),
    ),
    GoRoute(
      path: CarrinhoPage.routeName,
      name: CarrinhoPage.routeName,
      pageBuilder: (context, state) =>
          CupertinoPage(child: CarrinhoPage()),
    ),
  ],
);