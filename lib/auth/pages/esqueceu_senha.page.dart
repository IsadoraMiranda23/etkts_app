import 'package:etikts_app/components/buttons/button.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import '../../../colors.dart';
import '../../colors.dart';

class EsqueceuSenhaPage extends StatefulWidget {
  const EsqueceuSenhaPage({super.key});

  @override
  State<EsqueceuSenhaPage> createState() => _EsqueceuSenhaPageState();
}

class _EsqueceuSenhaPageState extends State<EsqueceuSenhaPage> {
  void mostrarPopupRecuperacao() {
    showDialog(
      context: context,
      barrierColor: Colors.black54,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: const EdgeInsets.all(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: AlertDialog(
                backgroundColor: MyColors.cinzaEscuro.withValues(alpha: 0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(42),
                    topRight: Radius.zero,
                    bottomLeft: Radius.circular(42),
                    bottomRight: Radius.circular(42),
                  ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Recuperar senha",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    Text(

                      "Enviamos um e-mail de instruções para você, confere lá",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 20),
                    Button(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      text: "OK",
                      borderRadius: 25,
                      backgroundColor: MyColors.verde,
                      borderColor: MyColors.verde,
                      width: 78,
                      height: 36,
                      textColor: Colors.black54,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                "assets/logos/logoCompletoVerde.png",
                width: 56,
                height: 46,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Container(
                  width: 362,
                  height: 381,
                  decoration: BoxDecoration(
                    color: MyColors.cinzaEscuro,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(42),
                      bottomLeft: Radius.circular(42),
                      bottomRight: Radius.zero,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 43.0, right: 30, left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Esqueceu a senha?",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),

                        // Descrição
                        Text(
                          "Digite seu e-mail para recuperar",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "E-mail",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        // Campo de e-mail
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: MyColors.cinzaEscuro,
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),

                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Image.asset(
                                  "assets/icons/seta.png",
                                  width: 31,
                                  height: 31,
                                ),
                              ),
                              const SizedBox(width: 130),
                              Align(
                                alignment: Alignment.center,
                                child: Button(
                                  onPressed: mostrarPopupRecuperacao,
                                  text: 'Recuperar',
                                  width: 120,
                                  height: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}