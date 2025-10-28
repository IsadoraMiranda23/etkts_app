import 'package:etkts_app/colors.dart';
import 'package:etkts_app/components/buttons/button.dart';
import 'package:etkts_app/components/cards/card_detalhe_produto_evento.component.dart';
import 'package:etkts_app/components/cards/item_amigo.component.dart';
import 'package:etkts_app/components/cards/item_cardapio.component.dart';
import 'package:etkts_app/components/cards/status_detalhe_evento.component.dart';
import 'package:flutter/material.dart';

class DetalheEventoPage extends StatefulWidget {
  const DetalheEventoPage({super.key});

  static const String routeName = '/detalhe-evento';

  @override
  State<DetalheEventoPage> createState() => _DetalheEventoPageState();
}

class _DetalheEventoPageState extends State<DetalheEventoPage> {
  bool textoExpandido = false;
  double valorTotal = 450.00;
  String abaSelecionada = "Ingressos";

  final String textoDescricao =
      "Este é um evento incrível com diversas atrações. Venha participar dessa experiência única "
      "com música ao vivo, comida deliciosa e muita diversão. O evento contará com artistas "
      "renomados e uma estrutura completa para garantir sua satisfação.";

  void alternarExpansaoTexto() {
    setState(() {
      textoExpandido = !textoExpandido;
    });
  }

  final List<Map<String, dynamic>> itensCardapio = [
    {
      'nome': 'Hambúrguer Artesanal',
      'descricao': 'Carne 180g, queijo, alface e molho especial',
      'valor': 29.90,
      'leftRounded': false,
      'rightRounded': true,
    },
    {
      'nome': 'Pizza Margherita',
      'descricao': 'Molho tomate, mussarela e manjericão fresco',
      'valor': 45.00,
      'leftRounded': true,
      'rightRounded': false,
    },
    {
      'nome': 'Batata Frita',
      'descricao': 'Porção individual com tempero da casa',
      'valor': 15.00,
      'leftRounded': false,
      'rightRounded': true,
    },
    {
      'nome': 'Refrigerante Lata',
      'descricao': 'Lata 350ml - diversos sabores',
      'valor': 8.00,
      'leftRounded': true,
      'rightRounded': false,
    },
    {
      'nome': 'Sobremesa Especial',
      'descricao': 'Brownie com sorvete e calda de chocolate',
      'valor': 22.50,
      'leftRounded': false,
      'rightRounded': true,
    },
    {
      'nome': 'Água Mineral',
      'descricao': 'Garrafa 500ml - com ou sem gás',
      'valor': 5.00,
      'leftRounded': true,
      'rightRounded': false,
    },
  ];

  // CONTEÚDO DA ABA SELECIONADA
  Widget buildConteudoAba() {
    switch (abaSelecionada) {
      case "Cardápio":
        return buildAbaCardapio();

      case "Amigos":
        return buildAbaAmigos();

      default: // Ingressos
        return buildAbaIngressos();
    }
  }

  Widget buildAbaCardapio() {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.75,
                    ),
                    itemCount: itensCardapio.length,
                    itemBuilder: (context, index) {
                      final item = itensCardapio[index];
                      return ItemCardapioComponent(
                        leftSideRounded: item['leftRounded'],
                        rightSideRounded: item['rightRounded'],
                        nomeComida: item['nome'],
                        descricao: item['descricao'],
                        valor: item['valor'],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 80), // Espaço para o container fixo
              ],
            ),
          ),
        ),

        // CONTAINER FIXO DO TOTAL E PAGAR
        Container(
          width: double.infinity,
          height: 93,
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white, width: 1.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      "Total",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      )
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "R\$${valorTotal.toStringAsFixed(2)}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Button(
                onPressed: () {},
                text: "Pagar",
                textColor: Colors.black,
                backgroundColor: MyColors.verde,
                width: 120,
                height: 45,
                borderRadius: 12,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildAbaAmigos() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
           StatusDetalheEvento(),
          const SizedBox(height: 20),

          ...List.generate(3, (index) => ItemAmigoComponent()),

        ],
      ),
    );
  }



  Widget buildAbaIngressos() {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
               StatusDetalheEvento(),
                const Padding(
                  padding: EdgeInsets.only(left: 24, top: 16, right: 24),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Descrição",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: textoExpandido
                      ? Text(textoDescricao, style: const TextStyle(color: Colors.white, fontSize: 14))
                      : Text(
                    textoDescricao,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                if (textoDescricao.length > 100)
                  GestureDetector(
                    onTap: alternarExpansaoTexto,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 80,
                        height: 28,
                        decoration: BoxDecoration(
                          color: MyColors.cinzaMedioEscuro,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Center(
                          child: Text(
                            textoExpandido ? "Ler Menos" : "Ler Mais",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                // CARDS DE INGRESSO
                const CardDetalheEventoComponent(),
                const SizedBox(height: 16),
                const CardDetalheEventoComponent(),
                const SizedBox(height: 16),
                const CardDetalheEventoComponent(),
                const SizedBox(height: 24),

                // ENDEREÇO E MAPA
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Localização",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Avenida Principal, 1234 - Centro\nSão Paulo - SP, 01234-567",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 14,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: MyColors.cinzaMedioEscuro,
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/mapa.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 80), // Espaço para o container fixo
              ],
            ),
          ),
        ),

        // CONTAINER FIXO DO TOTAL E PAGAR
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white, width: 1.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      "Total",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      )
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "R\$${valorTotal.toStringAsFixed(2)}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Button(
                onPressed: () {},
                text: "Pagar",
                textColor: Colors.black,
                backgroundColor: MyColors.verde,
                width: 120,
                height: 45,
                borderRadius: 12,
              ),
            ],
          ),
        ),
      ],
    );
  }

  // MENU DAS ABAS
  Widget buildMenuAbas() {
    final List<String> abas = ["Ingressos", "Cardápio", "Amigos"];

    return Container(
      width: double.infinity,
      height: 30,
      margin: const EdgeInsets.only(right:  24, bottom: 20,top: 6,left: 24),
      decoration: BoxDecoration(
        color: MyColors.cinzaMedioEscuro,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: abas.map((aba) {
          final bool selecionada = abaSelecionada == aba;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  abaSelecionada = aba;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  color: selecionada ? MyColors.cinzaEscuro : Colors.transparent,
                  borderRadius: BorderRadius.circular(22),
                ),
                alignment: Alignment.center,
                child: Text(
                  aba,
                  style: TextStyle(
                    color: selecionada ? MyColors.verde: Colors.white,
                    fontWeight: FontWeight.bold,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
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
          // IMAGEM DO EVENTO
          Container(
            width: double.infinity,
            height: 180,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              child: Image.asset(
                  "assets/images/imageEvent2.png",
                  fit: BoxFit.cover
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10,right: 24,left: 24,bottom: 2),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    "Titulo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset(
                  "assets/icons/icon3d.png",
                  width: 32,
                  height: 32,
                ),
              ],
            ),
          ),

          // MENU DE ABAS
          buildMenuAbas(),

          // CONTEÚDO DA ABA
          Expanded(
            child: buildConteudoAba(),
          ),
        ],
      ),
    );
  }
}