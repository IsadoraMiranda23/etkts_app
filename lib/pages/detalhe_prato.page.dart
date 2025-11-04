import 'package:etkts_app/colors.dart';
import 'package:etkts_app/components/event_appbar.component.dart';
import 'package:etkts_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_state.dart';
import '../types.dart';

class DetalhePratoPage extends StatefulWidget {
  const DetalhePratoPage({super.key});

  static const routeName = "/detalhe-prato/:id";

  static String goToRoute(int id) => '/detalhe-prato/$id';

  @override
  State<DetalhePratoPage> createState() => _DetalhePratoPageState();
}

class _DetalhePratoPageState extends State<DetalhePratoPage> {
  int quantidade = 0;
  TextEditingController observacaoController = TextEditingController();
  CardapioHome item = CardapioHome(id: 0);

  @override
  void initState() {
    super.initState();
    item = AppState.cardapioSelecionado;
    quantidade = AppState.cardapiosSelecionados.value.where((element) => element.id == item.id).length;
  }

  double get valorTotal {
    return (item.valor ?? 0.0) * quantidade;
  }

  void incrementarQuantidade() {
    setState(() {
      quantidade++;
    });
    final cardapios = [...AppState.cardapiosSelecionados.value];
    cardapios.add(item);
    AppState.cardapiosSelecionados.value = cardapios;
  }

  void decrementarQuantidade() {
    if (quantidade > 0) {
      setState(() {
        quantidade--;
      });
      final cardapios = [...AppState.cardapiosSelecionados.value];
      final index = cardapios.lastIndexOf(item);
      if (index != -1) {
        cardapios.removeAt(index);
      }
      AppState.cardapiosSelecionados.value = cardapios;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          // FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: EventAppCarComponent(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 17.h),
                Text(
                  "Cardápio",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 17.h),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 207.h,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(42.r),
                            topRight: Radius.circular(42.r),
                          ),
                          image:
                              item.imagem != null &&
                                  item.imagem!.isNotEmpty &&
                                  item.imagem!.startsWith("http")
                              ? DecorationImage(
                                  image: NetworkImage(item.imagem ?? ""),
                                  fit: BoxFit.cover,
                                )
                              : null,
                        ),
                      ),
                      Positioned.fill(
                        top: 165.h,
                        left: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(43.r),
                              bottomLeft: Radius.circular(43.r),
                              bottomRight: Radius.circular(43.r),
                            ),
                            color: MyColors.cinzaEscuroTransparente,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.w),
                            child: Column(
                              children: [
                                SizedBox(height: 50.h),
                                Stack(
                                  children: [
                                    Positioned(
                                      bottom: -8,
                                      left: 0,
                                      right: 0,
                                      child: Divider(
                                        thickness: 2,
                                        endIndent: 10,
                                        color: MyColors.verde,
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            item.nome ?? "",
                                            style:
                                                MyTypography.poppinsSemiBold15,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        SizedBox(width: 8.w),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 2.h,
                                            horizontal: 10.w,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10.r),
                                              bottomRight: Radius.circular(
                                                10.r,
                                              ),
                                              bottomLeft: Radius.circular(10.r),
                                            ),
                                            border: Border.all(
                                              color: MyColors.verde,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "R\$${(item.valor ?? 0.0).toStringAsFixed(2)}",
                                              style: MyTypography
                                                  .poppinsSemiBold15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 21.h),
                                Text(
                                  item.descricao ?? "",
                                  style: MyTypography.interRegular10,
                                ),
                                Spacer(),
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
                                      style: MyTypography.interRegular10,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6.h),
                                TextField(
                                  buildCounter:
                                      (
                                        context, {
                                        required currentLength,
                                        required isFocused,
                                        required maxLength,
                                      }) => Center(),
                                  onTapOutside: (event) => FocusManager
                                      .instance
                                      .primaryFocus
                                      ?.unfocus(),
                                  controller: observacaoController,
                                  maxLength: 100,
                                  style: MyTypography.interRegular9,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(11.r),
                                      ),
                                      borderSide: BorderSide(
                                        color: MyColors.verde,
                                        width: 1,
                                      ),
                                    ),
                                    fillColor: Colors.black,
                                    hintText:
                                        "Ex: tirar cebola, sem pimenta...",
                                    hintStyle: MyTypography.interRegular9,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(11.r),
                                      ),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 33.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      // width: 102.w,
                                      height: 36.h,
                                      decoration: BoxDecoration(
                                        color: MyColors.preto,
                                        borderRadius: BorderRadius.circular(
                                          11.r,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          IconButton(
                                            onPressed: decrementarQuantidade,
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

                                          IconButton(
                                            onPressed: incrementarQuantidade,
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
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 31.h,
                                      child: FilledButton(
                                        onPressed: () => {},
                                        style: FilledButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(11.r)),
                                          ),
                                          backgroundColor: MyColors.verde,
                                        ),
                                        child: Text(
                                          "Adicionar R\$ ${valorTotal.toStringAsFixed(2)}",
                                          style: MyTypography.poppinsSemiBold11
                                              .copyWith(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 42.h,),
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
          ),
        ),
      ),
    );
  }
}
