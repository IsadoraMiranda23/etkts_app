import 'package:etikts_app/components/cards/card_evento.componente.dart';
import 'package:etikts_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../../colors.dart';

class CarrosselComponent extends StatefulWidget {
  const CarrosselComponent({super.key});

  @override
  State<CarrosselComponent> createState() => _CarrosselComponentState();
}

class _CarrosselComponentState extends State<CarrosselComponent> {

  final CarouselSliderController carouselController = CarouselSliderController();
  double posicaoAtual = 0;

  final List<String> listaDeImagens = [
    'assets/images/fotoEvento.png',
    'assets/images/fotoEvento2.png',
    'assets/images/fotoEvento3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          carouselController: carouselController,
          items: listaDeImagens.map((String caminhoDaImagem) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage(caminhoDaImagem),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 387.0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: true,
            autoPlayInterval: const Duration(seconds: 10),
            autoPlayAnimationDuration: const Duration(milliseconds: 500),
            autoPlayCurve: Curves.easeInOut,
            enlargeCenterPage: false,
            enlargeFactor: 0.0,
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
          bottom: 102,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(20),
            ),
            child: DotsIndicator(
              dotsCount: listaDeImagens.length,
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