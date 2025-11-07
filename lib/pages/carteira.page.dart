import 'package:etkts_app/components/app_bar.component.dart';
import 'package:etkts_app/components/cards/card_evento_carteira_utilizado.component.dart';
import 'package:etkts_app/components/cards/card_evento_cateira.component.dart';
import 'package:etkts_app/components/cards/card_produto_carrinho.component.dart';
import 'package:etkts_app/components/cards/card_produtos_pedidos.components.dart';
import 'package:etkts_app/components/cards/item_cardapio.component.dart';
import 'package:etkts_app/components/item_venda.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../colors.dart'; // Importe suas cores

class CarteiraPage extends StatefulWidget {
  const CarteiraPage({super.key});

  @override
  State<CarteiraPage> createState() => _CarteiraPageState();
}

class _CarteiraPageState extends State<CarteiraPage> {
  int selectedSection = 0; // 0 = Ingressos, 1 = Pedidos


  Widget buildSectionSelector() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        width: double.infinity,
        height: 38.h,
        decoration: BoxDecoration(

          color: MyColors.cinzaMedioEscuro,
          borderRadius: BorderRadius.circular(13.r),
        ),
        child: Row(
          children: [
            buildSectionButton(
              text: "Ingressos",
              isSelected: selectedSection == 0,
              onTap: () => _onSectionChanged(0),
            ),
            buildSectionButton(
              text: "Pedidos",
              isSelected: selectedSection == 1,
              onTap: () => _onSectionChanged(1),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSectionButton({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 33.h,
          decoration: BoxDecoration(
            color: isSelected ? MyColors.cinzaEscuro : Colors.transparent,
            borderRadius: BorderRadius.circular(13.r),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: isSelected ? MyColors.verde: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContentSection() {
    return Expanded(
      child: selectedSection == 0
          ? buildIngressosSection()
          : buildPedidosSection(),
    );
  }

  Widget buildIngressosSection() {
    //  conteúdo dos ingressos
    return Column(
      children: [
        CardEventoCarteira(),
        SizedBox(height: 20,),
        Stack(children: [
          CardEventoCarteira(),

          Positioned(child: CardEventoCarteiraUtilizado())
        ],
          
        ),
      ],
    );
  }

  Widget buildPedidosSection() {
    //  conteúdo dos pedidos
    return Column(children: [
      CardProdutosPedidosComponent(
        nomePrato: "Pizza Margherita",
        dataEvento: DateTime(2024, 12, 15),
      ),
    ],
    );
  }

  // ========== FUNÇÕES ==========
  void _onSectionChanged(int section) {
    setState(() {
      selectedSection = section;
    });
  }

  // ========== BUILD PRINCIPAL ==========
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarComponent(),
      body: Column(
        children: [
          SizedBox(height: 20.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,),
            child: Text(
              "Carteira",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.w,),
            child: buildSectionSelector(),
          ),
          SizedBox(height: 20.h),
          buildContentSection(),
        ],
      ),
    );
  }

}