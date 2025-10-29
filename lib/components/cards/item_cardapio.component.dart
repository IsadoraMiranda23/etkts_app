import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/colors.dart';
import 'package:etkts_app/types.dart';
import 'package:flutter/material.dart';

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

  void _incrementarQuantidade() {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGEM DO ITEM
          Container(
            width: 160,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: getBorderRadius(),
              image: widget.item.imagem != null && widget.item.imagem!.isNotEmpty && widget.item.imagem!.startsWith("http") ? DecorationImage(
                image: NetworkImage(widget.item.imagem ?? ""),
                fit: BoxFit.cover,
              ) : null,
            ),
          ),
          const SizedBox(height: 8),
          // INFORMAÇÕES DO ITEM
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOME E PREÇO
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.item.nome ?? "",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
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
                const SizedBox(height: 4),
                // DESCRIÇÃO
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    widget.item.descricao ?? "",
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 11,
                      height: 1.2,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 8),
                // CONTADOR DE QUANTIDADE
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 4),
                    Container(
                      width: 100,
                      height: 28,
                      decoration: BoxDecoration(
                        color: MyColors.cinzaMedioEscuro,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // BOTÃO DIMINUIR
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
                                  color: quantidade > 0
                                      ? Colors.white
                                      : Colors.white54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          // QUANTIDADE
                          Text(
                            quantidade.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          // BOTÃO AUMENTAR
                          InkWell(
                            onTap: _incrementarQuantidade,
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
                                  fontSize: 16,
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
          ),
        ],
      ),
    );
  }
}
