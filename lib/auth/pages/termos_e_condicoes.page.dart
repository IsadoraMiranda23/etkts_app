import 'package:etikts_app/components/buttons/button.dart';
import 'package:etikts_app/colors.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

class TermosCondicoesPage extends StatefulWidget {
  const TermosCondicoesPage({super.key});

  @override
  State<TermosCondicoesPage> createState() => _TermosCondicoesPageState();
}

class _TermosCondicoesPageState extends State<TermosCondicoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 60),

            Center(
              child: Image.asset(
                "assets/logos/logoCompletoVerde.png",
                width: 70,
                height: 50,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 110.0, top: 55, bottom: 3),
              child: Text(
                "Termos e Condições",
                style: TextStyle(color: Colors.white, fontSize: 21),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Divider(
                height: 4,
                color: MyColors.verde,
                endIndent: 50,
                indent: 50,
              ),
            ),
            SizedBox(height: 30),

            Container(
              width: 289,
              height: 189,
              decoration: BoxDecoration(
                color: MyColors.cinzaMedioEscuro,

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Aceite!  ",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Image.asset(
                        "assets/icons/okBranco.png",
                        width: 15,
                        height: 15,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Aceito os termos de uso e condições", style: TextStyle(color: Colors.white),),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Button(onPressed: (){}, text: "OK", width: 76, height: 34,),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
