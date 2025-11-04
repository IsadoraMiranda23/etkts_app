import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/colors.dart';
import 'package:etkts_app/pages/detalhe_prato.page.dart';
import 'package:etkts_app/types.dart';
import 'package:etkts_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ItemCardapioComponent extends StatefulWidget {
  final bool leftSideRounded;
  final bool rightSideRounded;
  final CardapioHome item;

  const ItemCardapioComponent({
    super.key,
    this.leftSideRounded = true,
    this.rightSideRounded = true,
    required this.item,
  });

  @override
  State<ItemCardapioComponent> createState() => _ItemCardapioComponentState();
}

class _ItemCardapioComponentState extends State<ItemCardapioComponent> {
  int quantidade = 0;

  @override
  void initState() {
    super.initState();
    quantidade = AppState.cardapiosSelecionados.value.where((element) => widget.item.id == element.id).length;
  }

  void incrementarQuantidade() {
    setState(() {
      quantidade++;
    });
    final cardapios = [...AppState.cardapiosSelecionados.value];
    cardapios.add(widget.item);
    AppState.cardapiosSelecionados.value = cardapios;
  }

  void decrementarQuantidade() {
    if (quantidade > 0) {
      setState(() {
        quantidade--;
      });
      final cardapios = [...AppState.cardapiosSelecionados.value];
      cardapios.remove(widget.item);
      AppState.cardapiosSelecionados.value = cardapios;
    }
  }

  BorderRadius getBorderRadius() {
    return BorderRadius.only(
      topLeft: widget.rightSideRounded ? const Radius.circular(25) : Radius.zero,
      topRight: widget.leftSideRounded
          ? const Radius.circular(25)
          : Radius.zero,
      bottomLeft: widget.leftSideRounded
          ? const Radius.circular(25)
          : Radius.zero,
      bottomRight: widget.rightSideRounded
          ? const Radius.circular(25)
          : Radius.zero,
    );
  }

  String renderItemDescription() {
    var ret = "";
    if (widget.item.descricao != null) {
      var split = widget.item.descricao!.split(" ");
      for (var index = 0; index < split.length; index++) {
        ret += '${split[index]} ';
        if (index == 1) break;
      }
      ret += "...";
    }
    return ret;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // IMAGEM DO ITEM
        GestureDetector(
          onTap: () {
            AppState.cardapioSelecionado = widget.item;
            context.push(DetalhePratoPage.goToRoute(widget.item.id.toInt()));
          },
          child: Container(
            // width: 160.w,
            height: 128.h,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: getBorderRadius(),
              image: widget.item.imagem != null && widget.item.imagem!.isNotEmpty && widget.item.imagem!.startsWith("http") ? DecorationImage(
                image: NetworkImage(widget.item.imagem ?? ""),
                fit: BoxFit.cover,
              ) : null,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        // INFORMAÇÕES DO ITEM
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOME E PREÇO
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.item.nome ?? "",
                    style: MyTypography.poppinsSemiBold9,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  "R\$${(widget.item.valor ?? 0.0).toStringAsFixed(2)}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            // DESCRIÇÃO
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    renderItemDescription(),
                    style: MyTypography.interRegular7,
                  ),
                ),
                Container(
                  width: 73.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                    color: MyColors.cinzaMedioEscuro,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // BOTÃO DIMINUIR
                      InkWell(
                        onTap: decrementarQuantidade,
                        borderRadius: BorderRadius.circular(15.r),
                        child: Container(
                          width: 24.w,
                          height: 24.h,
                          alignment: Alignment.center,
                          child: Text(
                            "-",
                            style: TextStyle(
                              color: quantidade > 0
                                  ? Colors.white
                                  : Colors.white54,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                      // QUANTIDADE
                      ValueListenableBuilder(
                        valueListenable: AppState.cardapiosSelecionados,
                        builder: (context, value, child) {
                          final q = value.where((element) => element.id == widget.item.id).length;
                          return Text(
                            q.toString(),
                            style: MyTypography.poppinsSemiBold13.copyWith(
                              color: q > 0 ? MyColors.verde : Colors.white
                            ),
                          );
                        }
                      ),
                      // BOTÃO AUMENTAR
                      InkWell(
                        onTap: incrementarQuantidade,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          width: 24.w,
                          height: 24.h,
                          alignment: Alignment.center,
                          child: Text(
                            "+",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
