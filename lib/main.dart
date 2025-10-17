import 'package:etikts_app/auth/pages/cadastro.page.dart';
import 'package:etikts_app/auth/pages/notificacoes.page.dart';
import 'package:etikts_app/components/alert/popup_alert.component.dart';
import 'package:etikts_app/components/buttons/button.dart';
import 'package:etikts_app/components/cards/card_evento.componente.dart';
import 'package:etikts_app/auth/pages/efetuar_pagamento.page.dart';
import 'package:etikts_app/auth/pages/esqueceu_senha.page.dart';
import 'package:etikts_app/auth/pages/evento.page.dart';
import 'package:etikts_app/auth/pages/loading.page.dart';
import 'package:etikts_app/auth/pages/login.page.dart';
import 'package:etikts_app/auth/pages/termos_e_condicoes.page.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return EventoPage() ;
  }
}
