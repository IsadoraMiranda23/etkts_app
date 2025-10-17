import 'package:etikts_app/colors.dart';
import 'package:etikts_app/components/cards/notificacao_usuario.component.dart';
import 'package:flutter/material.dart';

class NotificacoesPage extends StatefulWidget {
  const NotificacoesPage({super.key});

  @override
  State<NotificacoesPage> createState() => _NotificacoesPageState();
}

class _NotificacoesPageState extends State<NotificacoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 36.0, top: 60, bottom: 8),
            child: Align(
              alignment: Alignment.centerLeft,

                child: Text(
                  "Notificações",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
          ),

          Center(
            child: Container(
              width: 338,
              height: 2,
              color: MyColors.verde,
            ),
          ),
SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NotificacaoUsuarioComponent(),
          ),
        ],
      ),
    );
  }
}
