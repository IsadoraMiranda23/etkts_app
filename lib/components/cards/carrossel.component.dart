import 'package:etikts_app/components/cards/card_evento_componente.dart';
import 'package:etikts_app/shared/design_system/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class CarrosselComponent extends StatefulWidget {
  const CarrosselComponent({super.key});

  @override
  State<CarrosselComponent> createState() => _CarrosselComponentState();
}

class _CarrosselComponentState extends State<CarrosselComponent> {
  // MUDE AQUI: CarouselController → CarouselSliderController
  final CarouselSliderController carouselController = CarouselSliderController();
  double posicaoAtual = 0;

  final List<String> listaDeImagens = [
    'assets/images/fotoEvento.png',
    'assets/images/fotoEvento2.png',
    'assets/images/fotoEvento3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: carouselController,
          items: listaDeImagens.map((String caminhoDaImagem) {
            return Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(caminhoDaImagem),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 181.0,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                posicaoAtual = index.toDouble();
              });
            },
          ),
        ),
        const SizedBox(height: 15),
        DotsIndicator(
          dotsCount: listaDeImagens.length,
          position: posicaoAtual,
          decorator: DotsDecorator(
            size: const Size.square(8.0),
            activeSize: const Size(12.0, 8.0),
            color: MyColors.cinzaClaroInput,
            activeColor: MyColors.roxo,
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
          ),
        ),

      ],
    );
  }
}