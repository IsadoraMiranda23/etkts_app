import 'package:etkts_app/services/snackbar.service.dart';
import 'package:flutter/material.dart';
import 'package:etkts_app/colors.dart';
import 'package:etkts_app/pages/detalhe_evento.page.dart'; // Importe a página
import 'package:go_router/go_router.dart'; // Importe o go_router

class CardEventoComponente extends StatefulWidget {
  final bool leftSideRounded;
  final bool rightSideRounded;
  final int numeroComprados;

  const CardEventoComponente({
    super.key,
    this.leftSideRounded = true,
    this.rightSideRounded = true,
    this.numeroComprados = 0,
  });

  @override
  State<CardEventoComponente> createState() => _CardEventoComponenteState();
}

class _CardEventoComponenteState extends State<CardEventoComponente> {
  BorderRadius getBorderRadius() {
    return BorderRadius.only(
      bottomLeft: widget.leftSideRounded
          ? const Radius.circular(25)
          : Radius.circular(25),
      bottomRight: widget.rightSideRounded
          ? const Radius.circular(25)
          : Radius.circular(25),
      topLeft: widget.leftSideRounded ? const Radius.circular(25) : Radius.zero,
      topRight: widget.rightSideRounded
          ? const Radius.circular(25)
          : Radius.zero,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(DetalheEventoPage.routeName);
      },
      child: Column(
        children: [
          Container(
            width: 155,
            height: 133,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: getBorderRadius(),
            ),
            child: Image.asset(
              'assets/images/imageEvent.png',
              width: 160,
              height: 133,
            ),
          ),
          // ... resto do seu código permanece igual
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 6.0, top: 8, left: 2),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 120,
                    height: 48,
                    decoration: BoxDecoration(
                      color: MyColors.preto,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 12.0,
                            left: 4,
                            top: 2,
                          ),
                          child: SizedBox(
                            width: 120 - 12 - 8,
                            child: Text(
                              "Nome do Evento",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10.0,
                            bottom: 6,
                            top: 2,
                            left: 3,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_today,
                                size: 14,
                                color: MyColors.verde,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 2.0,
                                  left: 4,
                                ),
                                child: Text(
                                  "dd/mm/aa",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Container(
                      width: 40,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                        color: MyColors.cinza,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_outline,
                            size: 18,
                            color: MyColors.verde,
                          ),
                          Text(
                            widget.numeroComprados.toString(),
                            style: TextStyle(fontSize: 12, color: MyColors.verde),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}