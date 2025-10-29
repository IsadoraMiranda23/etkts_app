import 'package:flutter/material.dart';

class ItemAmigoComponent extends StatefulWidget {
  final String usuario;

  const ItemAmigoComponent({super.key, this.usuario = "Nome do Usuario"});

  @override
  State<ItemAmigoComponent> createState() => _ItemAmigoComponentState();
}

class _ItemAmigoComponentState extends State<ItemAmigoComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(maxRadius: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.usuario,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 100),
            child: Image.asset("assets/icons/okVerdeCardapio.png"),
          ),
        ],
      ),
    );
  }
}
