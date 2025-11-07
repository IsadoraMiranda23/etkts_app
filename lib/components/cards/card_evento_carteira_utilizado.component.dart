import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors.dart';

class CardEventoCarteiraUtilizado extends StatefulWidget {
  const CardEventoCarteiraUtilizado({super.key});

  @override
  State<CardEventoCarteiraUtilizado> createState() => _CardEventoCarteiraUtilizadoState();
}

class _CardEventoCarteiraUtilizadoState extends State<CardEventoCarteiraUtilizado> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 253.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            MyColors.preto.withValues(alpha: .3),
            MyColors.preto.withValues(alpha: 0.6),
             MyColors.preto.withValues(alpha: .7),
          ],
          stops: const [0.0, 0.3, 0.5, 1],
        ),
      ),
      child: Center(
        child: Container(
          width: 175.w,
          height: 52.h,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 3
            )
          ),
          child: Center(child: Text("Utilizado", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),)),
          ),
      ),
    );;
  }
}
