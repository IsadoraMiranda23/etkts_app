import 'package:flutter/material.dart';

class DetalhePratoPage extends StatefulWidget {
  const DetalhePratoPage({super.key});

  @override
  State<DetalhePratoPage> createState() => _DetalhePratoPageState();
}

class _DetalhePratoPageState extends State<DetalhePratoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: Image.asset("assets/icons/voltarBranco.png"),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: Image.asset("assets/icons/carrinhoBranco.png"),
              onPressed: () {
                // Ação do carrinho
              },
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 320,
            child: Image.asset("assets/images/fotoCardapio2.png"),
          ),
        ],
      ),
    );
  }
}
