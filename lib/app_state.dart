import 'package:etkts_app/types.dart';
import 'package:flutter/widgets.dart';

class AppState {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static bool isLogged = false;
  static EventoHome? eventoSelecionado;
  static ValueNotifier<List<IngressoHome>> ingressosSelecionados = ValueNotifier([]);
  static ValueNotifier<List<CardapioHome>> cardapiosSelecionados = ValueNotifier([]);
}