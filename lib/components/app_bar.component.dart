import 'package:etkts_app/pages/carrinho.page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../app_state.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: IconButton(
          icon: Image.asset("assets/icons/voltarBranco.png"),
          onPressed: () {
            AppState.eventoSelecionado = null;
            AppState.ingressosSelecionados.value = [];
            AppState.cardapiosSelecionados.value = [];
            context.pop();
          },
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
            icon: Image.asset("assets/icons/carrinhoBranco.png"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CarrinhoPage()),
              );
            },
          ),
        ),
      ],
    );
  }
}