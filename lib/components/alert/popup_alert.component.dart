import 'package:etikts_app/components/buttons/button.dart';
import 'package:etikts_app/colors.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

class PopupAlertComponent extends StatefulWidget {
  final bool leftSideRounded;
  final bool rightSideRounded;
  final String tittlePopup;
  final String textPopup;
  final Color backGroundColor;
  final IconData? icon;
  final Color iconColor;
  final Function()? onOkPressed;

  const PopupAlertComponent({
    super.key,
    this.leftSideRounded = true,
    this.rightSideRounded = true,
    this.tittlePopup = "Titulo!",
    this.textPopup = "Descrição do alerta popup aqui",
    this.backGroundColor = MyColors.cinzaClaro,
    this.icon,
    this.iconColor = MyColors.roxo,
    this.onOkPressed,
  });

  @override
  State<PopupAlertComponent> createState() => _PopupAlertComponentState();
}

class _PopupAlertComponentState extends State<PopupAlertComponent> {
  BorderRadius getBorderRadius() {
    return BorderRadius.only(
      bottomLeft: widget.leftSideRounded ? const Radius.circular(42) : Radius.zero,
      bottomRight: widget.rightSideRounded ? const Radius.circular(42) : Radius.zero,
      topLeft: widget.leftSideRounded ? const Radius.circular(42) : Radius.zero,
      topRight: widget.rightSideRounded ? const Radius.circular(42) : Radius.zero,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 286,
      height: 190,
      decoration: BoxDecoration(
        color: widget.backGroundColor,
        borderRadius: getBorderRadius(), // Todas as bordas arredondadas
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 15.0,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Ícone de verificação
          if (widget.icon != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Icon(
                widget.icon,
                color: widget.iconColor,
                size: 48,
              ),
            ),

          // Título
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              widget.tittlePopup,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ),

          // Texto descritivo
          if (widget.textPopup.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Text(
                widget.textPopup,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white70,
                ),
              ),
            ),

          // Botão OK
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Button(
              onPressed: () {
                if (widget.onOkPressed != null) {
                  widget.onOkPressed!();
                } else {
                  Navigator.of(context).pop(); // Fecha o popup por padrão
                }
              },
              text: "OK",
              width: 76,
              height: 34,
              fontWeight: FontWeight.w400,
              backgroundColor: MyColors.verde,
              textColor: Colors.black,
              borderColor: MyColors.verde,
            ),
          )
        ],
      ),
    );
  }
}