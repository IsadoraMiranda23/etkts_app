import 'package:etkts_app/colors.dart';
import 'package:etkts_app/components/buttons/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_state.dart';
import '../types.dart';

class DetalhePratoPage extends StatefulWidget {
  final CardapioHome item;
  final String nomeComida;
  const DetalhePratoPage({
    super.key,
    required this.item,
    this.nomeComida = "nomeComida",
  });

  @override
  State<DetalhePratoPage> createState() => _DetalhePratoPageState();
}

class _DetalhePratoPageState extends State<DetalhePratoPage> {
  int quantidade = 0;
  TextEditingController observacaoController = TextEditingController();

  //  CALCULA O VALOR TOTAL
  double get valorTotal {
    return (widget.item.valor ?? 0.0) * quantidade;
  }

  void incrementarQuantidade() {
    setState(() {
      quantidade++;
    });
    final cardapios = [...AppState.cardapiosSelecionados.value];
    //  ADICIONA O ITEM MULTIPLAS VEZES CONFORME A QUANTIDADE
    for (int i = 0; i < quantidade; i++) {
      cardapios.add(widget.item);
    }
    AppState.cardapiosSelecionados.value = cardapios;
  }

  void decrementarQuantidade() {
    if (quantidade > 0) {
      setState(() {
        quantidade--;
      });
      final cardapios = [...AppState.cardapiosSelecionados.value];
      final index = cardapios.lastIndexOf(widget.item);
      if (index != -1) {
        cardapios.removeAt(index);
      }
      AppState.cardapiosSelecionados.value = cardapios;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: Image.asset("assets/icons/voltarBranco.png"),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: Image.asset("assets/icons/carrinhoBranco.png"),
              onPressed: () {
                // Ação do carrinho
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 12, left: 26),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Cardápio",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    width: double.infinity,
                    height: 207.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22.r),
                        topRight: Radius.circular(22.r),
                      ),
                      image:
                      widget.item.imagem != null &&
                          widget.item.imagem!.isNotEmpty &&
                          widget.item.imagem!.startsWith("http")
                          ? DecorationImage(
                        image: NetworkImage(widget.item.imagem ?? ""),
                        fit: BoxFit.cover,
                      )
                          : null,
                    ),
                  ),
                ),
                Positioned(
                  top: 150.h,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      width: 362.w,
                      height: 444.h, //
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(43.r),
                          topRight: Radius.zero,
                          bottomLeft: Radius.circular(43.r),
                          bottomRight: Radius.circular(43.r),
                        ),

                        color: MyColors.cinzaEscuroTransparente,
                      ),

                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30.0,
                              top: 70,
                              right: 28.0,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    widget.item.nome ?? widget.nomeComida,
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
                                    width: 76.w,
                                    height: 29.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.r),
                                        bottomRight: Radius.circular(10.r),
                                        bottomLeft: Radius.circular(10.r),
                                      ),
                                      border: Border.all(color: MyColors.verde),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "R\$${(widget.item.valor ?? 0.0).toStringAsFixed(2)}",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 2,
                            indent: 25,
                            endIndent: 100,
                            color: MyColors.verde,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                right: 8.0,
                                top: 20,
                              ),
                              child: Text(
                                // widget.item.descricao ?? "Descrição",
                                "Descrição do prato, aushduashds, ahygfja, dduaha auhhejfiao ajfgeybf ia7667ha ahsuduaf, iainfeyhbf.a dbffiojsodjfiosdjfnsd0fsdnjud9ifsd , kajnd heh hhy ju audhgasufs",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.white70,
                                ),
                                maxLines: 8,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),

                          Padding(
                            padding: const EdgeInsets.only(
                              right: 25.0,
                              left: 25,
                              top: 30.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Alguma observação?",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "${observacaoController.text.length}/100",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 26.h),
                                Container(
                                  height: 33.h,
                                  decoration: BoxDecoration(
                                    color: MyColors.preto,
                                    borderRadius: BorderRadius.circular(12.r),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                  ),
                                  child: TextField(
                                    controller: observacaoController,
                                    maxLength: 100,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      height: 1.2,
                                    ),
                                    decoration: InputDecoration(
                                      labelText:
                                      "Ex: tirar cebola, sem pimenta...",
                                      labelStyle: TextStyle(
                                        color: Colors.white60,
                                        fontSize: 12.sp,
                                      ),
                                      alignLabelWithHint: true,
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10.r,
                                        vertical: 4.r,
                                      ),
                                    ),
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                              vertical: 30,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 102.w,
                                  height: 31.h,
                                  decoration: BoxDecoration(
                                    color: MyColors.preto,
                                    borderRadius: BorderRadius.circular(11.r),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: decrementarQuantidade,
                                        borderRadius: BorderRadius.circular(15),
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
                                      Text(
                                        quantidade.toString(),
                                        style: TextStyle(
                                          color: quantidade > 0
                                              ? MyColors.verde
                                              : Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                        ),
                                      ),

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


                                Button(
                                  onPressed: () {},
                                  backgroundColor: MyColors.verde,
                                  borderRadius: 11.r,
                                  width: 130.w,
                                  height: 31.h,
                                  textColor: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  text:
                                  "Adicionar R\$${valorTotal.toStringAsFixed(2)}",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}