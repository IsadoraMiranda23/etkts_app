import 'package:etkts_app/colors.dart';
import 'package:etkts_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String formatarData(DateTime data) {
  return '${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')}/${data.year}';
}

class CardProdutoCarrinhoComponent extends StatefulWidget {
  final String nomePrato;
  final double valorPrato;
  final DateTime dataEvento;

  const CardProdutoCarrinhoComponent({
    super.key,
    this.nomePrato = "Nome Prato",
    this.valorPrato = 0.0,
    required this.dataEvento,
  });

  @override
  State<CardProdutoCarrinhoComponent> createState() =>
      _CardProdutoCarrinhoComponentState();
}

class _CardProdutoCarrinhoComponentState
    extends State<CardProdutoCarrinhoComponent> {
  int quantidade = 0;
  void incrementarQuantidade() {
    setState(() {
      quantidade++;
    });
  }

  void decrementarQuantidade() {
    if (quantidade > 0) {
      setState(() {
        quantidade--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 367.w,
      height: 70.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          bottomLeft: Radius.circular(30.r),
          topRight: Radius.circular(11.r),
          bottomRight: Radius.circular(11.r),
        ),
        border: Border.all(color: MyColors.cinzaEscuro,width: 2.50),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                bottomLeft: Radius.circular(30.r),
                topRight: Radius.zero,
                bottomRight: Radius.zero,
              )
            ),
            child: Image.asset("assets/images/fotoCardapio2.png",
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.nomePrato,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'R\$ ${widget.valorPrato.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    formatarData(widget.dataEvento),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              width: 106.w,
              height: 31.h,
              decoration: BoxDecoration(
                color: MyColors.cinzaEscuro,
                borderRadius: BorderRadius.circular(11.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: decrementarQuantidade,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 24,
                      height: 24,
                      alignment: Alignment.center,
                      child: Text(
                        "-",
                        style: TextStyle(
                          color: quantidade > 0 ? Colors.white : Colors.white54,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    quantidade.toString(),
                    style: TextStyle(
                      color: quantidade > 0 ? MyColors.verde : Colors.white54,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                    onTap: incrementarQuantidade,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 24,
                      height: 24,
                      alignment: Alignment.center,
                      child: const Text(
                        "+",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
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
