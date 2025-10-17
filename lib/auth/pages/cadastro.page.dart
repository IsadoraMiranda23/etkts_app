import 'package:etikts_app/colors.dart';
import 'package:etikts_app/components/buttons/button.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class NotificacaoUsuarioComponent extends StatefulWidget {
  const NotificacaoUsuarioComponent({super.key});

  @override
  State<NotificacaoUsuarioComponent> createState() => _NotificacaoUsuarioComponentState();
}

class _NotificacaoUsuarioComponentState extends State<NotificacaoUsuarioComponent> {
  final String nomeUsuario = "Marcio Pato";

  void _mostrarPopupAceitar() {
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
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: AlertDialog(
                backgroundColor: MyColors.cinzaEscuro.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.circular(42),
                    bottomLeft: Radius.circular(42),
                    bottomRight: Radius.circular(42),
                  ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Solicitação ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "solicitação aceita, deseja seguir de volta?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Button(
                          onPressed: () {
                            Navigator.of(context).pop();
                            _mostrarPopupSucesso();
                          },
                          text: "Confirmar",
                          borderRadius: 25,
                          backgroundColor: MyColors.verde,
                          borderColor: MyColors.verde,
                          width: 100,
                          height: 36,
                          textColor: Colors.black54,
                        ),
                        SizedBox(width: 10),
                        Button(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          text: "Cancelar",
                          borderRadius: 25,
                          backgroundColor: Colors.transparent,
                          borderColor: MyColors.verde,
                          width: 100,
                          height: 36,
                          textColor: MyColors.verde,
                        ),
                      ],
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

  void _mostrarPopupSucesso() {
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
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: AlertDialog(
                backgroundColor: MyColors.cinzaEscuro.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.circular(42),
                    bottomLeft: Radius.circular(42),
                    bottomRight: Radius.circular(42),
                  ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sucesso!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "sua solicitção foi enviada",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
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
    return Container(
      width: 362,
      height: 81,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(42),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              maxRadius: 30,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "$nomeUsuario solicitou para seguir você",
                style: TextStyle(color: Colors.white),
                maxLines: 3,
              ),
            ),
          ),
          // Botão Aceitar
          GestureDetector(
            onTap: _mostrarPopupAceitar,
            child: Image.asset("assets/icons/aceiteIcon.png", width: 27, height: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            // Botão Negar
            child: GestureDetector(
              onTap: () {
                // Adicione aqui a lógica para recusar a solicitação
                print("Solicitação recusada");
              },
              child: Image.asset("assets/icons/negarIcon.png", width: 27, height: 25),
            ),
          ),
        ],
      ),
    );
  }
}