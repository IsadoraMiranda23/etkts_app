import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/colors.dart';
import 'package:etkts_app/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardDetalheEventoComponent extends StatefulWidget {
  const CardDetalheEventoComponent({
    super.key,
    required this.ingresso,
    required this.eventoImagem,
  });

  final IngressoHome ingresso;
  final String? eventoImagem;

  @override
  State<CardDetalheEventoComponent> createState() =>
      _CardDetalheEventoComponentState();
}

class _CardDetalheEventoComponentState
    extends State<CardDetalheEventoComponent> {
  int quantidade = 0;

  void aumentarQuantidade() {
    setState(() {
      quantidade++;
    });
    final ingressos = [...AppState.ingressosSelecionados.value];
    ingressos.add(widget.ingresso);
    AppState.ingressosSelecionados.value = ingressos;
  }

  void diminuirQuantidade() {
    setState(() {
      if (quantidade > 0) {
        quantidade--;
      }
    });
    final ingressos = [...AppState.ingressosSelecionados.value];
    ingressos.remove(widget.ingresso);
    AppState.ingressosSelecionados.value = ingressos;
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.cinzaEscuro,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            topRight: Radius.circular(11.r),
            bottomRight: Radius.circular(11.r),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100.w,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                image:
                    widget.eventoImagem != null &&
                        widget.eventoImagem!.isNotEmpty &&
                        widget.eventoImagem!.startsWith("http")
                    ? DecorationImage(
                        image: NetworkImage(widget.eventoImagem!),
                        fit: BoxFit.cover,
                      )
                    : null,
                color: MyColors.cinza,
              ),
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                // Alinha à esquerda
                children: [
                  Text(
                    widget.ingresso.nome ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "R\$ ${widget.ingresso.valor?.toStringAsFixed(2) ?? 0.00}",
                    style: TextStyle(color: Colors.white, fontSize: 11.sp),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                height: 31.h,
                decoration: BoxDecoration(
                  color: MyColors.cinza,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: diminuirQuantidade,
                      icon: Icon(Icons.remove, color: Colors.white, size: 16),
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(minWidth: 24, minHeight: 24),
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
                      icon: Icon(Icons.add, color: Colors.white, size: 16),
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(minWidth: 24, minHeight: 24),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20.w),
          ],
        ),
      ),
    );
  }
}
