import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/colors.dart';
import 'package:etkts_app/components/buttons/button.dart';
import 'package:etkts_app/components/cards/card_cartao_cliente_cadastro.componente.dart';
import 'package:etkts_app/components/cards/card_produto_carrinho.component.dart';
import 'package:etkts_app/components/cards/card_selecionar_amigo.component.dart';
import 'package:etkts_app/components/event_appbar.component.dart';
import 'package:etkts_app/pages/pages.dart';
import 'package:etkts_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

// OPÇÃO DE PAGAMENTO
Widget buildOpcaoPagamento(
  String titulo,
  IconData icone,
  Function(String) onTap,
  String? formaPagamentoEscolhida,
) {
  return GestureDetector(
    onTap: () => onTap(titulo),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.w),
      margin: EdgeInsets.only(bottom: 4.h),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(38.r),
        border: Border.all(color: Colors.white30),
      ),
      child: Row(
        children: [
          Icon(icone, color: Colors.white, size: 20.w),
          SizedBox(width: 12.w),
          Text(
            titulo,
            style: TextStyle(color: Colors.white, fontSize: 14.sp),
          ),
          const Spacer(),
          if (formaPagamentoEscolhida == titulo)
            Icon(Icons.check, color: MyColors.roxo, size: 20.w),
        ],
      ),
    ),
  );
}

//  CONTAINER DE PAGAMENTO
Widget buildContainerPagamento({
  required double valorTotal,
  required String textoBotao,
  required VoidCallback onPressed,
  double? larguraBotao,
}) {
  return Container(
    width: double.infinity,
    height: 46.h,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white70),
      borderRadius: BorderRadius.circular(11.r),
    ),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12.w, top: 6.h),
              child: Text(
                "Total R\$",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'inter',
                  fontSize: 11.sp,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: Text(
                'R\$ ${valorTotal.toStringAsFixed(2)}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
          child: Button(
            onPressed: onPressed,
            text: textoBotao,
            borderRadius: 12.r,
            width: larguraBotao ?? (textoBotao == "Pagar" ? 86.w : 120.w),
            height: 37.h,
          ),
        ),
      ],
    ),
  );
}

// DIVIDIR CONTA
Widget buildDividirContaContent({required double valorTotal}) {
  return Column(
    children: [
      Container(
        width: double.infinity,
        height: 30.h,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(11.r),
          border: Border.all(color: Colors.white70),
        ),
        child: Row(
          children: [
            SizedBox(width: 12.w),
            Icon(Icons.search, color: Colors.white54, size: 20.w),
            SizedBox(width: 12.w),
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.white, fontSize: 14.sp),
                decoration: InputDecoration(
                  hintText: "Buscar usuários",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontFamily: 'inter',
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),

      SizedBox(height: 16.h),

      Padding(
        padding: EdgeInsets.all(10.w),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Dividir Conta",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(width: 5.w),

            Container(
              width: 70.w,
              height: 30.h,
              decoration: BoxDecoration(
                border: Border.all(color: MyColors.verde),
                borderRadius: BorderRadius.circular(38.r),
                color: MyColors.verde,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.people, color: MyColors.preto, size: 20.w),
                  Text(
                    "0",
                    style: TextStyle(
                      color: MyColors.preto,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      SizedBox(height: 16.h),

      CardSelecionarAmigo(),
      SizedBox(height: 8.h),
      CardSelecionarAmigo(),
      SizedBox(height: 8.h),
      CardSelecionarAmigo(),

      SizedBox(height: 18.h),

      // CONTAINER DE PAGAMENTO
      buildContainerPagamento(
        valorTotal: valorTotal,
        textoBotao: "Pagar Dividido",
        onPressed: () {},
        larguraBotao: 120.w,
      ),
      SizedBox(height: 20.h),
    ],
  );
}

Widget buildFormaPagamentoSection({
  required String formaPagamentoSelecionada,
  required Function(String) onMudarFormaPagamento,
  required bool mostrarOpcoesPagamento,
  required Function() onToggleOpcoes,
  required String? formaPagamentoEscolhida,
  required Function(String) onSelecionarPagamento,
  required double valorTotal,
}) {
  return Padding(
    padding: EdgeInsets.all(20.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // if (formaPagamentoSelecionada == "Pagar Sozinho")
        //   buildPagarSozinhoContent(
        //     mostrarOpcoesPagamento: mostrarOpcoesPagamento,
        //     onToggleOpcoes: onToggleOpcoes,
        //     formaPagamentoEscolhida: formaPagamentoEscolhida,
        //     onSelecionarPagamento: onSelecionarPagamento,
        //     valorTotal: valorTotal,
        //   )
        // else
        //   buildDividirContaContent(valorTotal: valorTotal),
      ],
    ),
  );
}

class CarrinhoPage extends StatefulWidget {
  final double valorTotal;
  const CarrinhoPage({super.key, this.valorTotal = 0.0});

  static const routeName = "/carrinho";

  @override
  State<CarrinhoPage> createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
  int formaPagamentoSelecionada = 0;
  String? formaPagamentoEscolhida;
  bool mostrarOpcoesPagamento = false;
  bool isIngresso = false;
  final List<String> opcoes = ["Pagar Sozinho", "Dividir Conta"];
  final TextEditingController cupom = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void toggleOpcoesPagamento() {
    setState(() {
      mostrarOpcoesPagamento = !mostrarOpcoesPagamento;
    });
  }

  void selecionarPagamento(String pagamento) {
    setState(() {
      formaPagamentoEscolhida = pagamento;
      mostrarOpcoesPagamento = false;
    });
  }

  Widget buildMenuFormaPagamento() {
    final ret = <Widget>[];
    for (int index = 0; index < opcoes.length; index++) {
      ret.add(
        Expanded(
          child: GestureDetector(
            onTap: () => setState(() {
              formaPagamentoSelecionada = index;
            }),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: formaPagamentoSelecionada == index
                    ? Colors.black
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(11.r),
              ),
              alignment: Alignment.center,
              child: Text(
                opcoes[index],
                style: TextStyle(
                  color: formaPagamentoSelecionada == index
                      ? MyColors.verde
                      : Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
        ),
      );
    }
    return Container(
      width: double.infinity,
      height: 38.h,
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 3.w),
      decoration: BoxDecoration(
        color: MyColors.cinzaMedio,
        borderRadius: BorderRadius.circular(11.r),
      ),
      child: Row(children: ret),
    );
  }

  Widget buildPagarSozinhoContent() {
    return Column(
      children: [
        // OPÇÕES DE PAGAMENTO
        DropdownMenu(
          textStyle: MyTypography.poppinsRegular10,
          width: double.infinity,
          hintText: "Selecione uma forma de pagamento",
          trailingIcon: Transform.rotate(
            angle: 90 * pi / 180,
            child: SvgPicture.asset(
              'assets/icons/arrow.svg',
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              height: 19.h,
              width: 19.w,
            ),
          ),
          selectedTrailingIcon: Transform.rotate(
            angle: 270 * pi / 180,
            child: SvgPicture.asset(
              'assets/icons/arrow.svg',
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              height: 19.h,
              width: 19.w,
            ),
          ),
          dropdownMenuEntries: [
            DropdownMenuEntry(
              value: "cartaoCredito",
              label: "Cartão de Crédito",
            ),
            DropdownMenuEntry(value: "pix", label: "PIX"),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: EventAppCarComponent(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 17.h),
                Text(
                  "Carrinho",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('pedido', style: MyTypography.interRegular10),
                    Text('pagamento', style: MyTypography.interRegular10),
                    Text('retirada', style: MyTypography.interRegular10),
                  ],
                ),
                SizedBox(height: 9.h),
                Row(
                  children: [
                    SizedBox(width: 7.w),
                    CircleAvatar(radius: 9.w, backgroundColor: MyColors.verde),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: Divider(color: MyColors.verde, thickness: 2),
                    ),
                    SizedBox(width: 25.w),
                    CircleAvatar(radius: 9.w, backgroundColor: MyColors.verde),
                    SizedBox(width: 25.w),
                    Expanded(
                      child: Divider(color: MyColors.roxo, thickness: 2),
                    ),
                    SizedBox(width: 22.w),
                    CircleAvatar(radius: 9.w, backgroundColor: MyColors.roxo),
                    SizedBox(width: 10.w),
                  ],
                ),
                SizedBox(height: 29.h),
                ValueListenableBuilder(
                  valueListenable: AppState.itemsSelecionados,
                  builder: (context, value, child) {
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (_, index) {
                        final item = List.from(value.keys)[index];
                        return CardProdutoCarrinhoComponent(
                          key: ValueKey(value[item]!.id),
                          item: value[item]!,
                        );
                      },
                      separatorBuilder: (_, _) => SizedBox(height: 10.h),
                      itemCount: value.length,
                    );
                  },
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () => context.pushReplacement(
                      DetalheEventoPage.goToRoute(
                        AppState.eventoSelecionado!.id!,
                      ),
                    ),
                    child: Text(
                      "Adicionar mais itens",
                      style: MyTypography.poppinsSemiBold10.copyWith(
                        color: MyColors.verde,
                      ),
                    ),
                  ),
                ),
                buildMenuFormaPagamento(),
                SizedBox(height: 31.h),
                Text("Formas de pagamento", style: MyTypography.interRegular13),
                SizedBox(height: 19.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 6.h,
                    horizontal: 12.w,
                  ),
                  decoration: BoxDecoration(
                    color: MyColors.cinzaEscuro,
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Cartão de crédito',
                          style: MyTypography.poppinsRegular11,
                        ),
                      ),
                      Transform.rotate(
                        angle: 90 * pi / 180,
                        child: SvgPicture.asset(
                          "assets/icons/arrow.svg",
                          colorFilter: ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                          height: 18.h,
                          width: 18.w,
                        ),
                      ),
                    ],
                  ),
                ),
                // buildPagarSozinhoContent(),
                SizedBox(height: 25.h),
                Row(
                  children: [
                    Expanded(child: CartaoClienteCadastro()),
                    SizedBox(width: 38.w),
                    SizedBox(
                      height: 49.h,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          textStyle: MyTypography.interRegular10,
                          side: BorderSide(color: MyColors.verde, width: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10.r),
                          ),
                        ),
                        onPressed: () => {},
                        child: Text('Adicionar cartão'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Container(
                  height: 28.h,
                  padding: EdgeInsets.symmetric(
                    vertical: 5.h,
                    horizontal: 12.w,
                  ),
                  decoration: BoxDecoration(
                    color: MyColors.cinzaEscuro,
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Adicionar cupom: ",
                        style: MyTypography.poppinsRegular11,
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: TextField(
                          onTapOutside: (event) =>
                              FocusManager.instance.primaryFocus?.unfocus(),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: MyTypography.poppinsRegular11,
                          controller: cupom,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 34.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.h,
                    horizontal: 12.w,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(11.r)),
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total R\$",
                              style: MyTypography.interRegular9,
                            ),
                            ValueListenableBuilder(
                              valueListenable: AppState.itemsSelecionados,
                              builder: (context, value, child) {
                                return Text(
                                  "R\$ ${value.values.fold(0.0, (prev, element) => prev + (element.valor * element.quantidade))}",
                                  style: MyTypography.poppinsSemiBold11,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 27.h,
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: MyColors.verde,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.all(
                                Radius.circular(10.r),
                              ),
                            ),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => SizedBox(
                                width: 170.w,
                                child: Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.only(
                                      topLeft: Radius.circular(42.r),
                                      topRight: Radius.circular(42.r),
                                      bottomRight: Radius.circular(42.r),
                                    )
                                  ),
                                  backgroundColor: MyColors.cinzaEscuro,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 50.w,
                                      vertical: 20.h,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.check_circle,
                                          color: MyColors.verde,
                                          size: 55,
                                        ),
                                        SizedBox(height: 15.h),
                                        Text(
                                          'Pagamento realizado com sucesso!',
                                          style: MyTypography.interRegular11,
                                        ),
                                        SizedBox(height: 15.h),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: 32.h,
                                              child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.black,
                                                  side: BorderSide(
                                                    color: MyColors.roxo,
                                                    width: 1,
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusGeometry.circular(
                                                          10.r,
                                                        ),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  context.pop();
                                                },
                                                child: Text(
                                                  'Sair',
                                                  style: MyTypography
                                                      .poppinsRegular15,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 32.h,
                                              child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.black,
                                                  side: BorderSide(
                                                    color: MyColors.verde,
                                                    width: 1,
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusGeometry.circular(
                                                          10.r,
                                                        ),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  context.pop();
                                                },
                                                child: Text(
                                                  'Ver pedido',
                                                  style: MyTypography
                                                      .poppinsRegular15,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Text(
                            "Pagar",
                            style: MyTypography.poppinsSemiBold11.copyWith(
                              color: Colors.black,
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
