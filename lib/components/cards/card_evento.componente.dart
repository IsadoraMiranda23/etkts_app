import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../colors.dart';
import '../../colors.dart';

class CardEventoComponente extends StatefulWidget {
  final bool leftSideRounded;
  final bool rightSideRounded;
  final int numeroComprados;




  const CardEventoComponente({
    super.key,
    this.leftSideRounded = true,
    this.rightSideRounded = true,
    this.numeroComprados = 0





  });

  @override
  State<CardEventoComponente> createState() => _CardEventoComponenteState();
}

class _CardEventoComponenteState extends State<CardEventoComponente> {
  BorderRadius getBorderRadius() {
    return BorderRadius.only(
      bottomLeft: widget.leftSideRounded ? const Radius.circular(25) : Radius.circular(25),
      bottomRight: widget.rightSideRounded ? const Radius.circular(25) : Radius.circular(25),
      topLeft: widget.leftSideRounded ? const Radius.circular(25) : Radius.zero,
      topRight: widget.rightSideRounded ? const Radius.circular(25) : Radius.zero,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0,left: 4,right: 5),
            child: Container(
              width: 160,
              height: 133,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: getBorderRadius(),
              ),
              child:Image.asset(
                'assets/images/imageEvent.png',
                width: 160,
                height: 133,
              ) ,
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(right:  6.0,top: 8,left: 2),
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
                  child: Row(
                    children: [
                      Column(
                        children: [
                         Padding(
                           padding: const EdgeInsets.only(right: 12.0,left: 8,top: 2),
                           child: Text("Nome do Evento",style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w600), ),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0,bottom: 6, top: 2),
                            child: Row(children: [
                              Icon(Icons.calendar_today, weight: 2, size: 14,color: MyColors.verde,),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0,left:  4),
                                child: Text("dd/mm/aa", style: TextStyle(fontSize: 11, color: Colors.white),),

                              ),

                            ],),
                          )

                        ],
                      ),

                    ],
                  ),

                ),
                 Container(
                   padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                   width: 40,
                   height: 20,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(bottomRight: Radius.circular(0),bottomLeft: Radius.circular(5),topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                     color: MyColors.cinza,
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [Icon(Icons.person_outline, size: 18, color: MyColors.verde,),
                    Text(widget.numeroComprados.toString(),style: TextStyle(
                      fontSize: 12,
                      color: MyColors.verde,
                    ),),


                     ],
                   ),

                 )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
