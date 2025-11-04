import 'package:etkts_app/colors.dart';
import 'package:etkts_app/components/app_bar.component.dart';
import 'package:etkts_app/components/buttons/button.dart';
import 'package:etkts_app/components/cards/card_cartao_cliente_cadastro.componente.dart';
import 'package:etkts_app/components/cards/card_produto_carrinho.component.dart';
import 'package:etkts_app/components/cards/card_selecionar_amigo.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

// MENU DE FORMA DE PAGAMENTO
Widget buildMenuFormaPagamento(
    String formaPagamentoSelecionada,
    Function(String) onTap,
    ) {
  final List<String> opcoes = ["Pagar Sozinho", "Dividir Conta"];

  return Container(
    width: double.infinity,
    height: 40.h,
    decoration: BoxDecoration(
      color: MyColors.cinzaMedio,
      borderRadius: BorderRadius.circular(16.r),
    ),
    child: Row(
      children: opcoes.map((opcao) {
        final bool selecionada = formaPagamentoSelecionada == opcao;
        return Expanded(
          child: GestureDetector(
            onTap: () => onTap(opcao),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 33.h,
              decoration: BoxDecoration(
                color: selecionada ? MyColors.cinzaEscuro : Colors.transparent,
                borderRadius: BorderRadius.circular(16.r),
              ),
              alignment: Alignment.center,
              child: Text(
                opcao,
                style: TextStyle(
                  color: selecionada ? MyColors.roxo : Colors.white54,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
        );
      }).toList(),
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

// PAGAR SOZINHO
Widget buildPagarSozinhoContent({
  required bool mostrarOpcoesPagamento,
  required Function() onToggleOpcoes,
  required String? formaPagamentoEscolhida,
  required Function(String) onSelecionarPagamento,
  required double valorTotal,
}) {
  return Column(
    children: [
      GestureDetector(
        onTap: onToggleOpcoes,
        child: Container(
          width: double.infinity,
          height: 50.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Colors.white30),
          ),
          child: Row(
            children: [
              Icon(Icons.credit_card, color: Colors.white54, size: 20.w),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  formaPagamentoEscolhida ?? "Selecionar forma de pagamento",
                  style: TextStyle(
                    color: formaPagamentoEscolhida != null
                        ? Colors.white
                        : Colors.white54,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              Icon(
                mostrarOpcoesPagamento
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                color: Colors.white54,
                size: 20.w,
              ),
            ],
          ),
        ),
      ),

      // OPÇÕES DE PAGAMENTO
      if (mostrarOpcoesPagamento) ...[
        SizedBox(height: 8.h),
        buildOpcaoPagamento(
          "Cartão de Crédito",
          Icons.credit_card,
          onSelecionarPagamento,
          formaPagamentoEscolhida,
        ),
        buildOpcaoPagamento(
          "PIX",
          Icons.qr_code,
          onSelecionarPagamento,
          formaPagamentoEscolhida,
        ),
        buildOpcaoPagamento(
          "Dinheiro",
          Icons.money,
          onSelecionarPagamento,
          formaPagamentoEscolhida,
        ),
      ],
      SizedBox(height: 16.h),
      Row(
        children: [
          CartaoClienteCadastro(),
          SizedBox(width: 16.w),
          Button(
            onPressed: () {},
            text: "Adicionar cartão",
            borderRadius: 10.r,
            backgroundColor: Colors.black,
            borderColor: MyColors.verde,
            textColor: Colors.white,
            height: 40.h,
            width: 129.w,
            fontFamily: "inter",
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),

      SizedBox(height: 80.h),

      buildContainerPagamento(
        valorTotal: valorTotal,
        textoBotao: "Pagar",
        onPressed: () {

        },
        larguraBotao: 86.w,
      ),
      SizedBox(height: 20.h),
    ],
  );
}

// DIVIDIR CONTA
Widget buildDividirContaContent({
  required double valorTotal,
}) {
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
        onPressed: () {

        },
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
        Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: Text(
            "Formas de pagamento",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        // MENU DE SELEÇÃO PAGAR SOZINHO / DIVIDIR CONTA
        buildMenuFormaPagamento(
          formaPagamentoSelecionada,
          onMudarFormaPagamento,
        ),

        SizedBox(height: 16.h),

        if (formaPagamentoSelecionada == "Pagar Sozinho")
          buildPagarSozinhoContent(
            mostrarOpcoesPagamento: mostrarOpcoesPagamento,
            onToggleOpcoes: onToggleOpcoes,
            formaPagamentoEscolhida: formaPagamentoEscolhida,
            onSelecionarPagamento: onSelecionarPagamento,
            valorTotal: valorTotal,
          )
        else
          buildDividirContaContent(
            valorTotal: valorTotal,
          ),
      ],
    ),
  );
}

class CarrinhoPage extends StatefulWidget {
  final double valorTotal;
  const CarrinhoPage({super.key, this.valorTotal = 0.0});

  @override
  State<CarrinhoPage> createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
  String formaPagamentoSelecionada = "Pagar Sozinho";
  String? formaPagamentoEscolhida;
  bool mostrarOpcoesPagamento = false;

  void mudarFormaPagamento(String forma) {
    setState(() {
      formaPagamentoSelecionada = forma;
    });
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarComponent(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 19.w, top: 10.h),
            child: Text(
              "Carrinho",
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(26.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "pedido",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontFamily: "inter",
                      ),
                    ),
                    SizedBox(height: 8.h),
                    CircleAvatar(
                      radius: 9.w,
                      backgroundColor: MyColors.roxo,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 28.h),
                  child: Container(
                      width: 105.w,
                      height: 2.h,
                      color: MyColors.roxo
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "pagamento",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontFamily: "inter",
                      ),
                    ),
                    SizedBox(height: 8.h),
                    CircleAvatar(
                      radius: 9.w,
                      backgroundColor: MyColors.roxo,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 28.h),
                  child: Container(
                      width: 105.w,
                      height: 2.h,
                      color: MyColors.roxo
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "retirada",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontFamily: "inter",
                      ),
                    ),
                    SizedBox(height: 10.h),
                    CircleAvatar(
                      radius: 9.w,
                      backgroundColor: MyColors.roxo,
                    ),
                  ],
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(22.w),
                    child: CardProdutoCarrinhoComponent(
                      nomePrato: "Pizza Margherita",
                      valorPrato: 45.90,
                      dataEvento: DateTime(2024, 12, 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(22.w),
                    child: CardProdutoCarrinhoComponent(
                      nomePrato: "Refrigerante Lata",
                      valorPrato: 8.00,
                      dataEvento: DateTime(2024, 12, 15),
                    ),
                  ),
                ],
              ),
            ),
          ),

          buildFormaPagamentoSection(
            formaPagamentoSelecionada: formaPagamentoSelecionada,
            onMudarFormaPagamento: mudarFormaPagamento,
            mostrarOpcoesPagamento: mostrarOpcoesPagamento,
            onToggleOpcoes: toggleOpcoesPagamento,
            formaPagamentoEscolhida: formaPagamentoEscolhida,
            onSelecionarPagamento: selecionarPagamento,
            valorTotal: widget.valorTotal > 0 ? widget.valorTotal : 53.90,
          ),
        ],
      ),
    );
  }
}