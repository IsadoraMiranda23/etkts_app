import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors.dart';
import 'card_produto_carrinho.component.dart';

class CardProdutosPedidosComponent extends StatefulWidget {
  final String nomePrato;
  final String local;
  final DateTime dataEvento;
  const CardProdutosPedidosComponent({
    super.key,
    this.nomePrato = "Nome Prato",
    this.local = "rua",
    required this.dataEvento,
  });



  @override
  State<CardProdutosPedidosComponent> createState() => _CardProdutosPedidosComponentState();
}

class _CardProdutosPedidosComponentState extends State<CardProdutosPedidosComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 367.w,
      height: 70.h,
      decoration: BoxDecoration(
        color: MyColors.cinzaEscuro,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          bottomLeft: Radius.circular(30.r),
          topRight: Radius.circular(42.r),
          bottomRight: Radius.circular(42.r),
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
                  Row(
                    children: [
                      Text(
                       widget.local,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("às",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,),
                        ),
                      ),
                      Text('horario',style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,),
                      ),

                  SizedBox(height: 4.h),

                ],
              ),
                  Text(
                    formatarData(widget.dataEvento),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
            ]),
          ),
            ),
          Padding(
            padding: const EdgeInsets.only(right: 22.0),
            child: Image.asset("assets/icons/setaDireita.png"),
          ),
        ],
      ),
    );
  }
}
