import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/colors.dart';
import 'package:etkts_app/extensions/string.extension.dart';
import 'package:etkts_app/types.dart';
import 'package:etkts_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroke_text/stroke_text.dart';

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
    return SizedBox(
      width: double.infinity,
      height: 69.h,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                bottomLeft: Radius.circular(100),
                topRight: Radius.circular(11.r),
                bottomRight: Radius.circular(11.r),
              ),
              border: Border.all(color: MyColors.cinzaEscuro, width: 2),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsGeometry.only(left: 105.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StrokeText(
                          text: widget.ingresso.nome ?? "",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textStyle: MyTypography.poppinsSemiBold13,
                          strokeColor: MyColors.cinzaEscuro,
                          strokeWidth: 1,
                        ),
                        StrokeText(
                          text:
                              "R\$ ${widget.ingresso.valor?.toStringAsFixed(2) ?? 0.00}",
                          textStyle: MyTypography.interSemiBold9,
                          strokeColor: MyColors.cinzaEscuro,
                          strokeWidth: 1,
                        ),
                        StrokeText(
                          text: widget.ingresso.data != null
                              ? widget.ingresso.data!.formatDateString
                              : "",
                          textStyle: MyTypography.interRegular8,
                          strokeColor: MyColors.cinzaEscuro,
                          strokeWidth: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 17.w),
                Center(
                  child: Container(
                    height: 31.h,
                    decoration: BoxDecoration(
                      color: MyColors.cinzaEscuro,
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
                            color: quantidade == 0 ? Colors.white : MyColors.verde,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: aumentarQuantidade,
                          icon: Icon(Icons.add, color: Colors.white, size: 16),
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
                SizedBox(width: 21.w),
              ],
            ),
          ),
          Container(
            width: 89.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(26.r, 13.r),
                bottomLeft: Radius.elliptical(26.r, 13.r),
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
        ],
      ),
    );
  }
}
