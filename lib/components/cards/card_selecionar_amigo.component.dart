import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors.dart';

class CardSelecionarAmigo extends StatefulWidget {
  final String nomeUsuario;
  const CardSelecionarAmigo({
    super.key,
    this.nomeUsuario = "Nome Usuario",
  });

  @override
  State<CardSelecionarAmigo> createState() => _CardSelecionarAmigoState();
}

class _CardSelecionarAmigoState extends State<CardSelecionarAmigo> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60.h,
      child: Row(
        children: [
          CircleAvatar(maxRadius: 50),
          SizedBox(width: 12.w),
          Text(
            widget.nomeUsuario,
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Container(
              width: 60.w,
              height: 28.h,
              decoration: BoxDecoration(
                color: MyColors.cinzaMedioEscuro,
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(
                  color: MyColors.cinzaMedioEscuro,
                  width: 1.w,
                ),
              ),
              child: Stack(
                children: [

                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    margin: EdgeInsets.all(2.w),
                    decoration: BoxDecoration(
                      color:  Colors.transparent,
                      borderRadius: BorderRadius.circular(13.r),
                    ),
                  ),

                  AnimatedPositioned(
                    duration: Duration(milliseconds: 200),
                    left: isSelected ? 22.w : 2.w,
                    right: isSelected ? 2.w : 22.w,
                    top: 2.w,
                    bottom: 2.w,
                    child: Container(
                      decoration: BoxDecoration(
                        color:  isSelected ? MyColors.verde : Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 16.w),
        ],
      ),
    );
  }
}