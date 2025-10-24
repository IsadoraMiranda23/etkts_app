import 'package:etkts_app/colors.dart';
import 'package:flutter/material.dart';

class CardDetalheEventoComponent extends StatefulWidget {
  const CardDetalheEventoComponent({super.key});

  @override
  State<CardDetalheEventoComponent> createState() => _CardDetalheEventoComponentState();
}

class _CardDetalheEventoComponentState extends State<CardDetalheEventoComponent> {

  String tipoIngresso = "VIP";
  double valor = 150.00;
  String data = "25/12/2023";
  int quantidade = 1;

  void aumentarQuantidade() {
    setState(() {
      quantidade++;
    });
  }

  void diminuirQuantidade() {
    setState(() {
      if (quantidade > 1) {
        quantidade--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 372,
      height: 85,
      decoration: BoxDecoration(
        color: MyColors.cinzaEscuro,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.zero,
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.zero,
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
            child: Image.asset(
              "assets/images/imageEvent2.png",
              width: 120,
              height: 85,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start, // Alinha à esquerda
                children: [
                  Text(
                    tipoIngresso,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "R\$ ${valor.toStringAsFixed(2)}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    data,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              width: 102,
              height: 31,
              decoration: BoxDecoration(
                color: MyColors.cinza,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  IconButton(
                    onPressed: diminuirQuantidade,
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 16,
                    ),
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(
                      minWidth: 24,
                      minHeight: 24,
                    ),
                  ),

                  Text(
                    quantidade.toString(),
                    style: TextStyle(
                      color: MyColors.verde,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  IconButton(
                    onPressed: aumentarQuantidade,
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 16,
                    ),
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(
                      minWidth: 24,
                      minHeight: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}