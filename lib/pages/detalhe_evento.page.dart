import 'package:carousel_slider/carousel_slider.dart';
import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/colors.dart';
import 'package:etkts_app/components/cards/card_detalhe_produto_evento.component.dart';
import 'package:etkts_app/components/cards/item_amigo.component.dart';
import 'package:etkts_app/components/cards/item_cardapio.component.dart';
import 'package:etkts_app/components/cards/status_detalhe_evento.component.dart';
import 'package:etkts_app/components/event_appbar.component.dart';
import 'package:etkts_app/components/rodape/rodape_navigation.component.dart';
import 'package:etkts_app/extensions/string.extension.dart';
import 'package:etkts_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  int abaSelecionada = 0;
  final EventoHome evento = AppState.eventoSelecionado!;
  Map<int, List<CardapioHome>> mapaCardapios = {};
  List<String> names = ['Marcio Raimo', 'Isadora Miranda'];
  List<String> fotos = ['homem.jpg', 'mulher.jpg'];
  int categoriaSelecionada = 0;
  int currentIndex = 5;
  ScrollController scrollIngresso = ScrollController();
  ScrollController scrollCardapio = ScrollController();
  ScrollController scrollAmigos = ScrollController();
  CarouselController controller = CarouselController(initialItem: 0);
  CarouselSliderController controller2 = CarouselSliderController();

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
    controller.addListener(() {
      print("opa");
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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

  List<Widget> renderCardapio() {
    var ret = <Widget>[];
    assert(mapaCardapios[categoriaSelecionada] != null, "Categoria não existe");
    for (
      var index = 0;
      index < mapaCardapios[categoriaSelecionada]!.length;
      index++
    ) {
      final item = mapaCardapios[categoriaSelecionada]![index];
      ret.add(
        Padding(
          padding: EdgeInsets.only(bottom: 22.h),
          child: SizedBox(
            width: (MediaQuery.of(context).size.width / 2) - 35.w,
            child: ItemCardapioComponent(
              leftSideRounded: index % 2 == 0,
              rightSideRounded: index % 2 == 1,
              item: item,
              key: ValueKey(item.id),
            ),
          ),
        ),
      );
    }
    return ret;
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
                    controller: scrollCardapio,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...mapaCardapios.values.map((record) {
                          return Padding(
                            padding: EdgeInsets.only(right: 17.w),
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
                SizedBox(height: 30.h),
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.spaceBetween,
                    children: renderCardapio(),
                  ),
                ),
                SizedBox(height: 80.h),
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
                borderRadius: BorderRadius.circular(11.r),
                border: Border.all(color: Colors.white, width: 1.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total", style: MyTypography.interRegular10),
                      Text(
                        "R\$${value.fold(0.0, (prev, element) => prev + (element.valor ?? 0.0)).toStringAsFixed(2)}",
                        style: MyTypography.poppinsSemiBold11,
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
                        style: MyTypography.poppinsSemiBold11.copyWith(
                          color: Colors.black,
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
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              StatusDetalheEvento(
                data: evento.data?.formatDateString ?? "01/01/2025",
                hora: evento.horario?.formatTimeString ?? "00:00",
                bairro: evento.bairro ?? "",
              ),
              SizedBox(height: 45.h),
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
                itemCount: names.length,
              ),
              SizedBox(height: 90.h),
            ],
          ),
        ),
        Positioned(
          width: MediaQuery.of(context).size.width - 22.w,
          bottom: 0,
          child: RodapeNavigation(currentIndex: currentIndex, onTap: (_) {}),
        ),
      ],
    );
  }

  Widget buildAbaIngressos() {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            controller: scrollIngresso,
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
                  style: MyTypography.poppinsSemiBold18,
                ),
                SizedBox(height: 13.h),
                SizedBox(
                  width: double.infinity,
                  child: textoExpandido
                      ? Text(
                          sanitizeString(evento.descricao),
                          style: MyTypography.interRegular12,
                        )
                      : Text(
                          sanitizeString(evento.descricao),
                          style: MyTypography.interRegular12,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                ),
                if (evento.descricao != null &&
                    evento.descricao!.isNotEmpty &&
                    evento.descricao!.length > 10)
                  SizedBox(height: 19.h),
                if (evento.descricao != null &&
                    evento.descricao!.isNotEmpty &&
                    evento.descricao!.length > 10)
                  Center(
                    child: SizedBox(
                      height: 17.h,
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
                          style: MyTypography.interRegular10,
                        ),
                      ),
                    ),
                  ),
                SizedBox(height: 31.h),
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
                  separatorBuilder: (_, index) => SizedBox(height: 35.h),
                  itemCount: evento.ingressoDetalhes!.length,
                ),
                SizedBox(height: 45.h),
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
                            style: MyTypography.interRegular12,
                          ),
                        ],
                      ),
                    ),
                    if (evento.latitude != null && evento.longitude != null)
                      SizedBox(width: 16.w),
                    if (evento.latitude != null && evento.longitude != null)
                      Stack(
                        children: [
                          Container(
                            height: 60.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: MyColors.cinzaMedioEscuro,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: stat.StaticMap(
                              googleApiKey:
                                  'AIzaSyBnw0lpqUqMdVh7RL6HXIgdokf-dr-5-3c',
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
              ],
            ),
          ),
        ),
        SizedBox(height: 11.h),
        // CONTAINER FIXO DO TOTAL E PAGAR
        ValueListenableBuilder(
          valueListenable: AppState.ingressosSelecionados,
          builder: (context, value, child) {
            return Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.r),
                border: Border.all(color: Colors.white, width: 1.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total", style: MyTypography.interRegular10),
                      Text(
                        "R\$${value.fold(0.0, (prev, element) => prev + (element.valor ?? 0.0)).toStringAsFixed(2)}",
                        style: MyTypography.poppinsSemiBold11,
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
                        style: MyTypography.poppinsSemiBold11.copyWith(
                          color: Colors.black,
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

    final ret = <Widget>[];

    for (var index = 0; index < abas.length; index++) {
      ret.add(
        Expanded(
          child: GestureDetector(
            onTap: () {
              AppState.ingressosSelecionados.value = [];
              AppState.cardapiosSelecionados.value = [];
              setState(() {
                abaSelecionada = index;
              });
              controller2.animateToPage(index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: abaSelecionada == index
                    ? Colors.black
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(22),
              ),
              alignment: Alignment.center,
              child: Text(
                abas[index],
                style: TextStyle(
                  color: abaSelecionada == index ? MyColors.verde : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Container(
      width: double.infinity,
      height: 25.h,
      decoration: BoxDecoration(
        color: MyColors.cinzaMedioEscuro,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
        child: Row(children: ret),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: EventAppCarComponent(),
        body: Padding(
          padding: EdgeInsets.only(top: 15.h, left: 14.w, right: 14.w),
          child: Column(
            children: [
              // IMAGEM DO EVENTO
              Container(
                width: double.infinity,
                height: 190.h,
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
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(42.r),
                    bottomRight: Radius.circular(42.r),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      evento.nome!,
                      style: MyTypography.poppinsSemiBold20,
                    ),
                  ),
                  Container(
                    height: 20.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                      color: MyColors.cinzaEscuro,
                      borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    ),
                    child: Center(
                      child: Text("3D", style: MyTypography.poppinsRegular11),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              // MENU DE ABAS
              buildMenuAbas(),
              SizedBox(height: 25.h),
              // CONTEÚDO DA ABA
              Expanded(
                child: CarouselSlider(
                  carouselController: controller2,
                  items: [
                    buildAbaIngressos(),
                    buildAbaCardapio(),
                    buildAbaAmigos(),
                  ],
                  options: CarouselOptions(
                    disableCenter: true,
                    enlargeCenterPage: false,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    pageSnapping: true,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        abaSelecionada = index;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
