import 'dart:ui';

import 'package:etikts_app/components/cards/card_cartao_cliente_cadastro.componente.dart';
import 'package:etikts_app/components/item_venda.component.dart';
import 'package:flutter/material.dart';
import '../../../components/buttons/button.dart';
import '../../../colors.dart';
import '../../colors.dart';

class EfetuarPagamentoPage extends StatefulWidget {
  const EfetuarPagamentoPage({super.key});

  @override
  State<EfetuarPagamentoPage> createState() => _EfetuarPagamentoPageState();
}

class _EfetuarPagamentoPageState extends State<EfetuarPagamentoPage> {
  String? formaPagamentoSelecionada;
  double valorTotal = 0.0;

  void atualizarValorTotal(double novoValor) {
    setState(() {
      valorTotal = novoValor;
    });
  }

  void mostrarPopupSucesso() {
    showDialog(
      context: context,
      barrierColor: Colors.black54,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: const EdgeInsets.all(20),
            child:BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0), // Background blur effect
              child: AlertDialog(
                backgroundColor: MyColors.cinzaEscuro.withValues(alpha: 0.8), // Dark translucent dialog
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(42),
                      bottomLeft: Radius.circular(42),
                      bottomRight:  Radius.circular(42) ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 60,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Pagamento realizado com sucesso!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,

                      ),
                      textAlign: TextAlign.center,
                    ),
                   SizedBox(height: 20),
                    Button(onPressed: (){
                      Navigator.of(context).pop();
                    }, text: "OK", borderRadius: 25, backgroundColor: MyColors.cinzaMedioEscuro,borderColor: MyColors.cinzaMedioEscuro, width:78,height: 36, textColor: Colors.white,),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Image.asset(
            "assets/icons/volta.png",
            width: 82,
            height: 72,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40.0, top: 20),
                child: Text(
                  "Efetuar Pagamento",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 60),
                child: Text(
                  "Itens do pedido",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ItemVendaComponente(
                  onTotalChanged: atualizarValorTotal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Resumo de Valores",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 362,
                  height: 43,
                  decoration: BoxDecoration(
                    color: MyColors.cinzaMedioEscuro,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          "Total",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text(
                          "R\$ ${valorTotal.toStringAsFixed(2)}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Divider(
                  color: MyColors.verde,
                  height: 2,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Formas de pagamento",
                  style: TextStyle(color: Colors.white),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 365,
                  height: 35,
                  decoration: BoxDecoration(
                    color: MyColors.cinzaEscuro,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: DropdownButton<String>(
                    value: formaPagamentoSelecionada,
                    isExpanded: true,
                    underline: Container(),
                    dropdownColor: MyColors.cinzaMedio,
                    style: TextStyle(color: Colors.white),
                    hint:  Text(
                      'Pagamento',
                      style: TextStyle(color: Colors.white70),
                    ),
                    icon: Image.asset("assets/icons/setaPag.png"),
                    items: <String>[
                      'Cartão de Crédito',
                      'Cartão de Débito',
                      'PIX',
                    ].map<DropdownMenuItem<String>>((String valor) {
                      return DropdownMenuItem<String>(
                        value: valor,
                        child: Text(valor),
                      );
                    }).toList(),
                    onChanged: (String? novoValor) {
                      setState(() {
                        formaPagamentoSelecionada = novoValor;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  CartaoClienteCadastro(),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Button(
                      onPressed:(){},
                      text: "Adicionar Cartão",
                      width: 126,
                      height:48,
                      borderRadius: 12,
                      backgroundColor: MyColors.roxo,
                      textColor: Colors.white,
                      borderColor: MyColors.roxo,
                      fontSize: 12,
                    ),
                  ),
                ],),
              ),
              const SizedBox(height: 260),
              Center(
                child: Button(
                  onPressed: mostrarPopupSucesso,
                  text: "Finalizar Pagamento",
                  textColor: Colors.black54,
                  borderColor: MyColors.verde,
                  backgroundColor: MyColors.verde,
                  width: 344,
                  height: 48,
                  borderRadius: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}