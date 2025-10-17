import 'package:etikts_app/colors.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class ItemVendaComponente extends StatefulWidget {
  final Function(double)? onTotalChanged;

  const ItemVendaComponente({super.key, this.onTotalChanged});

  @override
  State<ItemVendaComponente> createState() => _ItemVendaComponenteState();
}

class _ItemVendaComponenteState extends State<ItemVendaComponente> {
  String nomeItem = "Produto Exemplo";
  int quantidade = 1;
  double valorUnidade = 29.99;

  double get valorTotal => quantidade * valorUnidade;

  @override
  void initState() {
    super.initState();
    // Notificar o valor total inicial
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.onTotalChanged != null) {
        widget.onTotalChanged!(valorTotal);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              nomeItem,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${quantidade}x",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                "R\$ ${valorUnidade.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                "R\$ ${valorTotal.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Divider(color: MyColors.verde, height: 2, thickness: 2),
        ],
      ),
    );
  }
}