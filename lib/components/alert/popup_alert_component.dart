import 'package:etikts_app/components/buttons/button.dart';
import 'package:etikts_app/shared/design_system/colors.dart';
import 'package:flutter/material.dart';

class PopupAlertComponent extends StatefulWidget {
  final bool leftSideRounded;
  final bool rightSideRounded;
  final String tittlePopup;
  final String textPopup;
  final Color backGroundColor;
  final IconData? icon;
  final Color iconColor;

  const PopupAlertComponent({
    super.key,
    this.leftSideRounded = true,
    this.rightSideRounded = true,
    this.tittlePopup = "Titulo!",
    this.textPopup = "Descrição do alerta popup aqui",
    this.backGroundColor = MyColors.cinzaClaro,
    this.icon,
    this.iconColor = MyColors.roxo,
  });

  @override
  State<PopupAlertComponent> createState() => _PopupAlertComponentState();
}

class _PopupAlertComponentState extends State<PopupAlertComponent> {
  BorderRadius getBorderRadius() {
    return BorderRadius.only(
      bottomLeft: widget.leftSideRounded ? const Radius.circular(42) : Radius.circular(42),
      bottomRight: widget.rightSideRounded ? const Radius.circular(42) : Radius.circular(42),
      topLeft: widget.leftSideRounded ? const Radius.circular(42) : Radius.zero,
      topRight: widget.rightSideRounded ? const Radius.circular(42) : Radius.zero,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.all(20),
      child: Container(
        width: 279,
        height: 170,
        decoration: BoxDecoration(
          color: widget.backGroundColor,
          borderRadius: getBorderRadius(),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 6.0,
              offset: Offset(-3, 6),
            )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Ícone (se fornecido)

                  // Título
                  Text(
                    widget.tittlePopup,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  if (widget.icon != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Icon(
                        widget.icon,
                        color: widget.iconColor,
                        size: 18,
                        weight: 3,
                      ),
                    ),
                ],
              ),
            ),
            Text(widget.textPopup, style: TextStyle(fontSize: 12),),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Button(
                onPressed: (){},
                text: "OK",
                width: 76,
                height: 34,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}