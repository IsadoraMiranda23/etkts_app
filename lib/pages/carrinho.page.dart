import 'package:etkts_app/colors.dart';
import 'package:etkts_app/components/app_bar.component.dart';
import 'package:etkts_app/components/buttons/button.dart';
import 'package:etkts_app/components/cards/card_cartao_cliente_cadastro.componente.dart';
import 'package:etkts_app/components/cards/card_produto_carrinho.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// WIDGET PARA OPÇÃO DE PAGAMENTO
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
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(38),
        border: Border.all(color: Colors.white30),
      ),
      child: Row(
        children: [
          Icon(icone, color: Colors.white, size: 20),
          const SizedBox(width: 12),
          Text(
            titulo,
            style: TextStyle(color: Colors.white, fontSize: 14.sp),
          ),
          const Spacer(),
          if (formaPagamentoEscolhida == titulo)
            Icon(Icons.check, color: MyColors.roxo, size: 20),
        ],
      ),
    ),
  );
}

// ✅ WIDGET PARA MENU DE FORMA DE PAGAMENTO
Widget buildMenuFormaPagamento(
  String formaPagamentoSelecionada,
  Function(String) onTap,
) {
  final List<String> opcoes = ["Pagar Sozinho", "Dividir Conta"];

  return Container(
    width: double.infinity,
    height: 40,
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
              height: 33,
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
                  fontSize: 14,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    ),
  );
}

//  PAGAR SOZINHO
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
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white30),
          ),
          child: Row(
            children: [
              Icon(Icons.credit_card, color: Colors.white54, size: 20),
              const SizedBox(width: 12),
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
                size: 20,
              ),
            ],
          ),
        ),
      ),

      // OPÇÕES DE PAGAMENTO
      if (mostrarOpcoesPagamento) ...[
        const SizedBox(height: 8),
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
      const SizedBox(height: 16),
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

      Container(
        width: double.infinity,
        height: 46.h,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white70),
          borderRadius: BorderRadius.circular(11.r),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12.0, top: 6),
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
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    'R\$ ${valorTotal.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
              child: Button(
                onPressed: () {},
                text: "Pagar",
                borderRadius: 12.r,
                width: 86.w,
                height: 37.h,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20.h),
    ],
  );
}

//  DIVIDIR CONTA
Widget buildDividirContaContent() {
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
            Icon(Icons.search, color: Colors.white54, size: 20),
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

      const SizedBox(height: 16),

      Row(
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

          const SizedBox(width: 12),

          // CONTADOR DE PESSOAS
          Container(
            width: 70.w,
            height: 30.h,
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.verde),
              borderRadius: BorderRadius.circular(38),
              color: MyColors.verde,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.people, color: MyColors.preto, size: 28),
                Text(
                  "0",
                  style: TextStyle(
                    color: MyColors.preto,
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      const SizedBox(height: 16),

      // ESPAÇO PARA O COMPONENTE FUTURO
      Container(
        width: double.infinity,
        height: 100.h,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white30),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            "Componente em desenvolvimento...",
            style: TextStyle(color: Colors.white54, fontSize: 14.sp),
          ),
        ),
      ),
    ],
  );
}

//  FORMA DE PAGAMENTO
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
    padding: const EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
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

        const SizedBox(height: 16),

        if (formaPagamentoSelecionada == "Pagar Sozinho")
          buildPagarSozinhoContent(
            mostrarOpcoesPagamento: mostrarOpcoesPagamento,
            onToggleOpcoes: onToggleOpcoes,
            formaPagamentoEscolhida: formaPagamentoEscolhida,
            onSelecionarPagamento: onSelecionarPagamento,
            valorTotal: valorTotal,
          )
        else
          buildDividirContaContent(),
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
            padding: const EdgeInsets.only(left: 19.0, top: 10),
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
            padding: const EdgeInsets.all(20.0),
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
                    SizedBox(height: 10.h),
                    CircleAvatar(
                      maxRadius: 9.w,
                      backgroundColor: MyColors.roxo,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Container(width: 110, height: 2, color: MyColors.roxo),
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
                    SizedBox(height: 10.h),
                    CircleAvatar(
                      maxRadius: 9.w,
                      backgroundColor: MyColors.roxo,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Container(width: 110, height: 2, color: MyColors.roxo),
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
                      maxRadius: 9.w,
                      backgroundColor: MyColors.roxo,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // LISTA DE PRODUTOS NO CARRINHO
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: CardProdutoCarrinhoComponent(
                      nomePrato: "Pizza Margherita",
                      valorPrato: 45.90,
                      dataEvento: DateTime(2024, 12, 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(22.0),
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
            valorTotal: widget.valorTotal,
          ),
        ],
      ),
    );
  }
}
