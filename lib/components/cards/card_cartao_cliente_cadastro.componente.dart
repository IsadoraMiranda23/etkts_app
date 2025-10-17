import 'package:etikts_app/components/buttons/button.dart';
import 'package:etikts_app/colors.dart';
import 'package:flutter/material.dart';

class CartaoClienteCadastro extends StatefulWidget {
  const CartaoClienteCadastro({super.key});

  @override
  State<CartaoClienteCadastro> createState() => _CartaoClienteCadastroState();
}

class _CartaoClienteCadastroState extends State<CartaoClienteCadastro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 48,
      decoration: BoxDecoration(
      color: Colors.white,
          borderRadius: BorderRadius.circular(10)
    ),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
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
