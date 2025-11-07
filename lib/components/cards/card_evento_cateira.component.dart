import 'package:etkts_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardEventoCarteira extends StatefulWidget {
  final String endereco;

  const CardEventoCarteira({
    super.key,
    this.endereco = "Endereço"

  });

  @override
  State<CardEventoCarteira> createState() => _CardEventoCarteiraState();
}

class _CardEventoCarteiraState extends State<CardEventoCarteira> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SafeArea(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(42.r),
                bottomLeft: Radius.zero,
                topRight: Radius.zero,
                bottomRight: Radius.circular(42.r),
              ),
              child: Container(
                width: 350.w,
                height: 185.h,
                child: Image.asset(
                  'assets/images/fotoEvento.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: 350.w,
            height: 28.h,
            decoration: BoxDecoration(
              color: MyColors.cinzaEscuro,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(widget.endereco, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,fontSize: 11.sp, fontFamily: 'inter'),),
              SizedBox(width: 80,),
              Text("data",style: TextStyle(color: Colors.white,fontSize: 10.sp, fontFamily: 'inter')),
                SizedBox(width: 87,),
             Image.asset("assets/icons/ingressoIcon.png"),
                SizedBox(width: 7,),
              Text
                (//quantidade ingresso
                 "1" ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14.sp, fontFamily: 'inter')),
            ],),
          )
        ],
      ),
    );
  }
}