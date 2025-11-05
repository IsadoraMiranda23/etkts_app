import 'package:etkts_app/colors.dart';
import 'package:etkts_app/extensions/string.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/typography.dart';
import 'package:stroke_text/stroke_text.dart';

String formatarData(DateTime data) {
  return '${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')}/${data.year}';
}

class CardProdutoCarrinhoData {
  final int id;
  final String nome;
  final String imagem;
  final double valor;
  final String data;
  final String descricao;
  int quantidade;
  final bool isIngresso;

  CardProdutoCarrinhoData({
    required this.id,
    required this.nome,
    required this.imagem,
    required this.valor,
    required this.data,
    required this.quantidade,
    required this.isIngresso,
    required this.descricao,
  });
}

class CardProdutoCarrinhoComponent extends StatefulWidget {
  const CardProdutoCarrinhoComponent({super.key, required this.item});

  final CardProdutoCarrinhoData item;

  @override
  State<CardProdutoCarrinhoComponent> createState() =>
      CardProdutoCarrinhoComponentState();
}

class CardProdutoCarrinhoComponentState
    extends State<CardProdutoCarrinhoComponent> {
  late CardProdutoCarrinhoData item;

  @override
  void initState() {
    super.initState();
    item = widget.item;
  }

  void aumentarQuantidade() {
    setState(() {
      item.quantidade++;
    });
    final temp = {...AppState.itemsSelecionados.value};
    if (!temp.containsKey(item.id)) {
      temp.putIfAbsent(item.id, () => item);
    } else {
      temp.update(item.id, (_) => item);
    }
    AppState.itemsSelecionados.value = temp;
  }

  void diminuirQuantidade() {
    setState(() {
      if (item.quantidade > 0) {
        item.quantidade--;
      }
    });
    final temp = {...AppState.itemsSelecionados.value};
    if (item.quantidade > 0) {
      assert(temp.containsKey(widget.item.id), "itemsSelecionados não tem id");
      temp.update(item.id, (_) => item);
    } else {
      temp.removeWhere((key, _) => key == item.id);
    }
    AppState.itemsSelecionados.value = temp;
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
                          text: widget.item.nome,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textStyle: MyTypography.poppinsSemiBold13,
                          strokeColor: MyColors.cinzaEscuro,
                          strokeWidth: 1,
                        ),
                        StrokeText(
                          text: "R\$ ${widget.item.valor.toStringAsFixed(2)}",
                          textStyle: MyTypography.interSemiBold9,
                          strokeColor: MyColors.cinzaEscuro,
                          strokeWidth: 1,
                        ),
                        StrokeText(
                          text: widget.item.data.isNotEmpty
                              ? widget.item.data.formatDateString
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
                          item.quantidade.toString(),
                          style: TextStyle(
                            color: item.quantidade == 0
                                ? Colors.white
                                : MyColors.verde,
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
                  widget.item.imagem.isNotEmpty &&
                      widget.item.imagem.startsWith("http")
                  ? DecorationImage(
                      image: NetworkImage(widget.item.imagem),
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
