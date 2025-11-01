import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/colors.dart';
import 'package:etkts_app/components/cards/card_detalhe_produto_evento.component.dart';
import 'package:etkts_app/components/cards/item_amigo.component.dart';
import 'package:etkts_app/components/cards/item_cardapio.component.dart';
import 'package:etkts_app/components/cards/status_detalhe_evento.component.dart';
import 'package:etkts_app/extensions/string.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  Map<int, List<CardapioHome>> mapaCardapios = {};
  List<String> names = ['Marcio Raimo', 'Isadora Miranda'];
  List<String> fotos = ['homem.jpg', 'mulher.jpg'];
  int categoriaSelecionada = 0;

  @override
  void initState() {
    super.initState();
    if (evento.cardapioDetalhes != null) {
      for (final cardapio in evento.cardapioDetalhes!) {
        if (mapaCardapios.containsKey(cardapio.categoriaCardapioDetalhes!.id)) {
          mapaCardapios[cardapio.categoriaCardapioDetalhes!.id]!.add(cardapio);
        } else {
          mapaCardapios.putIfAbsent(
            cardapio.categoriaCardapioDetalhes!.id,
            () => [cardapio],
          );
        }
      }
      categoriaSelecionada = mapaCardapios.keys.first;
    }
  }

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
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...mapaCardapios.values.map((record) {
                          return Padding(
                            padding: EdgeInsets.only(right: 12.0),
                            child: SizedBox(
                              height: 25.h,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    categoriaSelecionada = record
                                        .first
                                        .categoriaCardapioDetalhes!
                                        .id;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color:
                                            categoriaSelecionada ==
                                                record
                                                    .first
                                                    .categoriaCardapioDetalhes!
                                                    .id
                                            ? MyColors.roxo
                                            : Colors.transparent,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    record
                                        .first
                                        .categoriaCardapioDetalhes!
                                        .nome!,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 25.w,
                    mainAxisSpacing: 15.h,
                    childAspectRatio: .75,
                  ),
                  itemCount: mapaCardapios[categoriaSelecionada]!.length,
                  itemBuilder: (context, index) {
                    final item = mapaCardapios[categoriaSelecionada]![index];
                    return ItemCardapioComponent(
                      leftSideRounded: index % 2 == 0,
                      rightSideRounded: index % 2 == 1,
                      item: item,
                      key: ValueKey(item.id),
                    );
                    // if (evento.cardapioDetalhes != null) {
                    //   final item = evento.cardapioDetalhes![index];
                    //   return ItemCardapioComponent(
                    //     leftSideRounded: index % 2 == 0,
                    //     rightSideRounded: index % 2 == 1,
                    //     item: item,
                    //   );
                    // }
                    // return const Center();
                  },
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
        // CONTAINER FIXO DO TOTAL E PAGAR
        ValueListenableBuilder(
          valueListenable: AppState.cardapiosSelecionados,
          builder: (context, value, child) {
            return Container(
              padding: const EdgeInsets.all(8),
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
                      Text(
                        "Total",
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                      ),
                      Text(
                        "R\$${value.fold(0.0, (prev, element) => prev + (element.valor ?? 0.0)).toStringAsFixed(2)}",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: MyColors.verde,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      child: Text(
                        "Pagar",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        SizedBox(height: 15.h),
      ],
    );
  }

  Widget buildAbaAmigos() {
    return SingleChildScrollView(
      child: Column(
        children: [
          StatusDetalheEvento(
            data: evento.data?.formatDateString ?? "01/01/2025",
            hora: evento.horario?.formatTimeString ?? "00:00",
            bairro: evento.bairro ?? "",
          ),
          const SizedBox(height: 20),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              return SizedBox(
                width: double.infinity,
                child: ItemAmigoComponent(
                  usuario: names[index],
                  foto: fotos[index],
                ),
              );
            },
            separatorBuilder: (_, index) => SizedBox(height: 25.h),
            itemCount: 2,
          ),
        ],
      ),
    );
  }

  Widget buildAbaIngressos() {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StatusDetalheEvento(
                  data: evento.data?.formatDateString ?? "01/01/2025",
                  hora: evento.horario?.formatTimeString ?? "00:00",
                  bairro: evento.bairro ?? "",
                ),
                SizedBox(height: 21.h),
                Text(
                  "Descrição",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: double.infinity,
                  child: textoExpandido
                      ? Text(
                          sanitizeString(evento.descricao),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                        )
                      : Text(
                          sanitizeString(evento.descricao),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                ),
                if (evento.descricao != null &&
                    evento.descricao!.isNotEmpty &&
                    evento.descricao!.length > 10)
                  SizedBox(height: 10.h),
                if (evento.descricao != null &&
                    evento.descricao!.isNotEmpty &&
                    evento.descricao!.length > 10)
                  Center(
                    child: SizedBox(
                      height: 28.h,
                      child: FilledButton(
                        onPressed: alternarExpansaoTexto,
                        style: FilledButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          backgroundColor: MyColors.cinzaMedioEscuro,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(140),
                          ),
                        ),
                        child: Text(
                          textoExpandido ? "Ler -" : "Ler +",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                SizedBox(height: 20.h),
                // CARDS DE INGRESSO
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    final ingresso = evento.ingressoDetalhes![index];
                    return CardDetalheEventoComponent(
                      ingresso: ingresso,
                      eventoImagem: evento.imagem,
                    );
                  },
                  separatorBuilder: (_, index) => SizedBox(height: 10.h),
                  itemCount: evento.ingressoDetalhes!.length,
                ),
                SizedBox(height: 10.h),
                // ENDEREÇO E MAPA
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Text(
                            "${evento.logradouro ?? ""}, ${evento.numero ?? ""} - ${evento.bairro ?? ""}\n${evento.cidadeDetalhes?.nome ?? ""} - ${evento.estadoDetalhes?.sigla ?? ""}, ${evento.cep ?? ""}",
                            style: TextStyle(
                              color: Colors.white.withAlpha(204),
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (evento.latitude != null && evento.longitude != null)
                      const SizedBox(width: 16),
                    if (evento.latitude != null && evento.longitude != null)
                      Container(
                        height: 60.h,
                        width: 100.w,
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
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
        // CONTAINER FIXO DO TOTAL E PAGAR
        ValueListenableBuilder(
          valueListenable: AppState.ingressosSelecionados,
          builder: (context, value, child) {
            return Container(
              padding: const EdgeInsets.all(8),
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
                      Text(
                        "Total",
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                      ),
                      Text(
                        "R\$${value.fold(0.0, (prev, element) => prev + (element.valor ?? 0.0)).toStringAsFixed(2)}",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: MyColors.verde,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      child: Text(
                        "Pagar",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        SizedBox(height: 15.h),
      ],
    );
  }

  // MENU DAS ABAS
  Widget buildMenuAbas() {
    final List<String> abas = ["Ingressos", "Cardápio", "Amigos"];

    return Container(
      width: double.infinity,
      height: 30,
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp),
        child: Column(
          children: [
            // IMAGEM DO EVENTO
            Container(
              width: double.infinity,
              height: 180,
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
            SizedBox(height: 20.h),
            Row(
              children: [
                Expanded(
                  child: Text(
                    evento.nome!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset("assets/icons/icon3d.png", width: 32, height: 32),
              ],
            ),
            SizedBox(height: 10.h),
            // MENU DE ABAS
            buildMenuAbas(),
            SizedBox(height: 20.h),
            // CONTEÚDO DA ABA
            Expanded(child: buildConteudoAba()),
          ],
        ),
      ),
    );
  }
}
