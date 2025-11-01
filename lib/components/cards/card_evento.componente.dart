import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/extensions/string.extension.dart';
import 'package:etkts_app/types.dart';
import 'package:flutter/material.dart';
import 'package:etkts_app/colors.dart';
import 'package:etkts_app/pages/detalhe_evento.page.dart'; // Importe a página
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart'; // Importe o go_router

class CardEventoComponente extends StatelessWidget {
  final bool leftSideRounded;
  final bool rightSideRounded;
  final int numeroComprados;
  final EventoHome evento;

  const CardEventoComponente({
    super.key,
    this.leftSideRounded = true,
    this.rightSideRounded = true,
    this.numeroComprados = 0,
    required this.evento,
  });

  BorderRadius getBorderRadius() {
    return BorderRadius.only(
      bottomLeft: leftSideRounded ? Radius.circular(25.r) : Radius.zero,
      bottomRight: rightSideRounded ? Radius.circular(25.r) : Radius.zero,
      topLeft: rightSideRounded ? Radius.circular(25.r) : Radius.zero,
      topRight: leftSideRounded ? Radius.circular(25.r) : Radius.zero,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppState.eventoSelecionado = evento;
        context.push(DetalheEventoPage.goToRoute(evento.id!));
      },
      child: Column(
        children: [
          Container(
            height: 140,
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
              borderRadius: getBorderRadius(),
            ),
            // child: evento.imagem != null && evento.imagem!.isNotEmpty && evento.imagem!.startsWith("http") ? Image.network(
            //   evento.imagem!,
            //   width: 160,
            //   height: 133,
            //   fit: BoxFit.cover,
            // ) : Container(
            //   width: 160,
            //   height: 133,
            //   color: MyColors.cinza,
            // ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.w, top: 15.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        evento.nome!,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: 14,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2.0, left: 4),
                              child: Text(
                                evento.data!.formatDateString,
                                style: TextStyle(
                                  fontSize: 9.sp,
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
                Row(
                  children: [
                    Icon(Icons.person_outline, size: 18, color: Colors.white),
                    Text(
                      numeroComprados.toString(),
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
