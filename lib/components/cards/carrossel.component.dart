import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/colors.dart';
import 'package:etkts_app/pages/detalhe_evento.page.dart';
import 'package:etkts_app/types.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CarrosselComponent extends StatefulWidget {
  const CarrosselComponent({super.key, required this.eventos});

  final List<EventoHome> eventos;

  @override
  State<CarrosselComponent> createState() => _CarrosselComponentState();
}

class _CarrosselComponentState extends State<CarrosselComponent> {

  final CarouselSliderController carouselController = CarouselSliderController();
  double posicaoAtual = 0;
  List<EventoHome> eventos = [];

  @override
  void initState() {
    super.initState();
    for (var evento in widget.eventos) {
      if (evento.imagem != null && evento.imagem!.isNotEmpty && evento.imagem!.startsWith("http")) {
        eventos.add(evento);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          carouselController: carouselController,
          items: eventos.map((evento) {
            return InkWell(
              onTap: () {
                AppState.eventoSelecionado = evento;
                context.push(DetalheEventoPage.goToRoute(evento.id!));
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(evento.imagem!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: double.infinity,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: true,
            autoPlayInterval: const Duration(seconds: 10),
            autoPlayAnimationDuration: const Duration(milliseconds: 500),
            autoPlayCurve: Curves.easeInOut,
            scrollPhysics: const PageScrollPhysics(),
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                posicaoAtual = index.toDouble();
              });
            },
          ),
        ),
        Positioned(
          top: 205.h,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: DotsIndicator(
              dotsCount: eventos.isEmpty ? 1 : eventos.length,
              position: posicaoAtual,
              decorator: DotsDecorator(
                size: const Size.square(10.0),
                activeSize: const Size(13.0, 7.0),
                color: MyColors.cinzaClaroInput,
                activeColor: MyColors.roxo,
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}