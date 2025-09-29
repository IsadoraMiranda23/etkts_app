import 'package:etikts_app/shared/design_system/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final double width;
  final double height;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final Color borderColor;
  final double borderWidth;
  final EdgeInsets padding;
  final bool isEnabled;

  const Button({
    super.key,
    this.text = 'Botão',
    required this.onPressed,
    this.backgroundColor = MyColors.verde,
    this.textColor = MyColors.preto,
    this.borderRadius = 30.0,
    this.width = 120.0,
    this.height = 50.0,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.w600,
    this.fontFamily = 'Poppins',
    this.borderColor = MyColors.verde,
    this.borderWidth = 0.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    this.isEnabled = true,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.isEnabled ? widget.backgroundColor : Colors.grey,

        borderRadius: BorderRadius.circular(widget.borderRadius),
        border: Border.all(
          color: widget.borderColor,
          width: widget.borderWidth,
        ),
      ),
      child: TextButton(
        onPressed: widget.isEnabled ? widget.onPressed : null,
        style: TextButton.styleFrom(
          padding: widget.padding,
          alignment: Alignment.center,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(

            color: widget.textColor,
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
            fontFamily: widget.fontFamily,

          ),

        ),
      ),
    );
  }
}