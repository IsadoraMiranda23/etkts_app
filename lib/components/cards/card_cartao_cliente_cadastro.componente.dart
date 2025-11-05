import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartaoClienteCadastro extends StatefulWidget {
  const CartaoClienteCadastro({super.key});

  @override
  State<CartaoClienteCadastro> createState() => _CartaoClienteCadastroState();
}

class _CartaoClienteCadastroState extends State<CartaoClienteCadastro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
      color: Colors.white,
          borderRadius: BorderRadius.circular(10)
    ),
      child: Row(children: [
        Padding(
          padding: EdgeInsets.all(10.r),
          child: Icon(Icons.credit_card, color: Colors.black, size: 22,),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(right:  30.0),
              child: Text("Bandeira", style: TextStyle(fontSize: 12),),
            ),
            Text("**** **** **** 1111",style: TextStyle(fontSize: 10),),
          ],),
        ),


      ],
      ),
    );
  }
}
