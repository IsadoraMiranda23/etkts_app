import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/colors.dart';
import 'package:etkts_app/components/buttons/button.dart';
import 'package:etkts_app/components/cards/card_detalhe_produto_evento.component.dart';
import 'package:etkts_app/components/cards/item_amigo.component.dart';
import 'package:etkts_app/components/cards/item_cardapio.component.dart';
import 'package:etkts_app/components/cards/status_detalhe_evento.component.dart';
import 'package:etkts_app/extensions/string.extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_static_maps_controller/google_static_maps_controller.dart'
    as stat;

import '../types.dart';

class DetalheEventoPage extends StatefulWidget {
  const DetalheEventoPage({super.key});

  static const String routeName = '/detalhe-evento/:id';

  static String goToRoute(int id) => '/detalhe-evento/$id';

  @override
  State<DetalheEventoPage> createState() => _DetalheEventoPageState();
}

class _DetalheEventoPageState extends State<DetalheEventoPage> {
  bool textoExpandido = false;
  double valorTotal = 450.00;
  String abaSelecionada = "Ingressos";
  final EventoHome evento = AppState.eventoSelecionado!;
  final String textoDescricao =
      "Este é um evento incrível com diversas atrações. Venha participar dessa experiência única "
      "com música ao vivo, comida deliciosa e muita diversão. O evento contará com artistas "
      "renomados e uma estrutura completa para garantir sua satisfação.";

  void alternarExpansaoTexto() {
    setState(() {
      textoExpandido = !textoExpandido;
    });
  }

  String sanitizeString(String? str) {
    if (str == null) return "";
    return str.replaceAll(
      RegExp(r'<p>|</p>|<strong>|</strong>|<br>|<ul>|</ul>|<li>|</li>'),
      '',
    );
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
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 20,
                          childAspectRatio: 0.75,
                        ),
                    itemCount: evento.cardapioDetalhes?.length ?? 0,
                    itemBuilder: (context, index) {
                      if (evento.cardapioDetalhes != null) {
                        final item = evento.cardapioDetalhes![index];
                        return ItemCardapioComponent(
                          leftSideRounded: index % 2 == 0,
                          rightSideRounded: index % 2 == 1,
                          item: item,
                        );
                      }
                      return const Center();
                    },
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),

        // CONTAINER FIXO DO TOTAL E PAGAR
        ValueListenableBuilder(
          valueListenable: AppState.cardapiosSelecionados,
          builder: (context, value, child) {
            return Container(
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
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "R\$${value.fold(0.0, (prev, element) => prev + (element.valor ?? 0.0)).toStringAsFixed(2)}",
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
            );
          },
        ),
      ],
    );
  }

  Widget buildAbaAmigos() {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: StatusDetalheEvento(
              data: evento.data?.formatDateString ?? "01/01/2025",
              hora: evento.horario?.formatTimeString ?? "00:00",
              bairro: evento.bairro ?? "",
            ),
          ),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: StatusDetalheEvento(
                    data: evento.data?.formatDateString ?? "01/01/2025",
                    hora: evento.horario?.formatTimeString ?? "00:00",
                    bairro: evento.bairro ?? "",
                  ),
                ),
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
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 8,
                    ),
                    child: textoExpandido
                        ? Text(
                            sanitizeString(evento.descricao),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          )
                        : Text(
                            sanitizeString(evento.descricao),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
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
                ...?evento.ingressoDetalhes?.map((ingresso) {
                  return Column(
                    children: [
                      CardDetalheEventoComponent(
                        ingresso: ingresso,
                        eventoImagem: evento.imagem,
                      ),
                      const SizedBox(height: 16),
                    ],
                  );
                }),

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
                              "${evento.logradouro ?? ""}, ${evento.numero ?? ""} - ${evento.bairro ?? ""}\n${evento.cidadeDetalhes?.nome ?? ""} - ${evento.estadoDetalhes?.sigla ?? ""}, ${evento.cep ?? ""}",
                              style: TextStyle(
                                color: Colors.white.withAlpha(204),
                                fontSize: 14,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (evento.latitude != null && evento.longitude != null)
                        const SizedBox(width: 16),
                      if (evento.latitude != null && evento.longitude != null)
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: MyColors.cinzaMedioEscuro,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: stat.StaticMap(
                              googleApiKey:
                                  'AIzaSyBnw0lpqUqMdVh7RL6HXIgdokf-dr-5-3c',
                              height: 70,
                              width: 70,
                              center: stat.GeocodedLocation.latLng(
                                double.parse(evento.latitude ?? "0"),
                                double.parse(evento.longitude ?? "0"),
                              ),
                              zoom: 15,
                              markers: [
                                stat.Marker(
                                  locations: [
                                    stat.GeocodedLocation.latLng(
                                      double.parse(evento.latitude ?? "0"),
                                      double.parse(evento.longitude ?? "0"),
                                    ),
                                  ],
                                ),
                              ],
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
        ValueListenableBuilder(
          valueListenable: AppState.ingressosSelecionados,
          builder: (context, value, child) {
            return Container(
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
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "R\$${value.fold(0.0, (prev, element) => prev + (element.valor ?? 0.0)).toStringAsFixed(2)}",
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
            );
          },
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
      margin: const EdgeInsets.only(right: 24, bottom: 20, top: 6, left: 24),
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
                AppState.ingressosSelecionados.value = [];
                AppState.cardapiosSelecionados.value = [];
                setState(() {
                  abaSelecionada = aba;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  color: selecionada
                      ? MyColors.cinzaEscuro
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(22),
                ),
                alignment: Alignment.center,
                child: Text(
                  aba,
                  style: TextStyle(
                    color: selecionada ? MyColors.verde : Colors.white,
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
            onPressed: () {
              AppState.eventoSelecionado = null;
              AppState.ingressosSelecionados.value = [];
              AppState.cardapiosSelecionados.value = [];
              context.pop();
            },
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
                  color: Colors.black.withAlpha(102),
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
              child: Container(
                decoration: BoxDecoration(
                  image:
                      evento.imagem != null &&
                          evento.imagem!.isNotEmpty &&
                          evento.imagem!.startsWith("http")
                      ? DecorationImage(
                          image: NetworkImage(evento.imagem!),
                          fit: BoxFit.cover,
                        )
                      : null,
                  color: MyColors.cinza,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 24,
              left: 24,
              bottom: 2,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    evento.nome!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset("assets/icons/icon3d.png", width: 32, height: 32),
              ],
            ),
          ),
          // MENU DE ABAS
          buildMenuAbas(),
          // CONTEÚDO DA ABA
          Expanded(child: buildConteudoAba()),
        ],
      ),
    );
  }
}
