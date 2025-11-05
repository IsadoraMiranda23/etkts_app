import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/colors.dart';
import 'package:etkts_app/components/cards/card_produto_carrinho.component.dart';
import 'package:etkts_app/pages/detalhe_prato.page.dart';
import 'package:etkts_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ItemCardapioComponent extends StatefulWidget {
  final bool leftSideRounded;
  final bool rightSideRounded;
  final CardProdutoCarrinhoData item;

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

  BorderRadius getBorderRadius() {
    return BorderRadius.only(
      topLeft: widget.rightSideRounded
          ? const Radius.circular(25)
          : Radius.zero,
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
    if (item.descricao.isNotEmpty) {
      var split = item.descricao.split(" ");
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
            AppState.itemSelecionado = item;
            context.push(DetalhePratoPage.goToRoute(item.id.toInt()));
          },
          child: Container(
            // width: 160.w,
            height: 128.h,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: getBorderRadius(),
              image:
                  item.imagem.isNotEmpty &&
                      item.imagem.startsWith("http")
                  ? DecorationImage(
                      image: NetworkImage(item.imagem),
                      fit: BoxFit.cover,
                    )
                  : null,
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
                    item.nome,
                    style: MyTypography.poppinsSemiBold9,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  "R\$${(item.valor).toStringAsFixed(2)}",
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
                        onTap: diminuirQuantidade,
                        borderRadius: BorderRadius.circular(15.r),
                        child: Container(
                          width: 24.w,
                          height: 24.h,
                          alignment: Alignment.center,
                          child: Text(
                            "-",
                            style: TextStyle(
                              color: item.quantidade > 0
                                  ? Colors.white
                                  : Colors.white54,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                      // QUANTIDADE
                      Text(
                        item.quantidade.toString(),
                        style: MyTypography.poppinsSemiBold13.copyWith(
                          color: item.quantidade > 0
                              ? MyColors.verde
                              : Colors.white,
                        ),
                      ),
                      // BOTÃO AUMENTAR
                      InkWell(
                        onTap: aumentarQuantidade,
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
