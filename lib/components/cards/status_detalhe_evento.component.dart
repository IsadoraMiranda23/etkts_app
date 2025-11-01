import 'package:etkts_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusDetalheEvento extends StatefulWidget {
  final String hora;
  final String data;
  final String bairro;

  const StatusDetalheEvento({
    super.key,
    this.hora = "00:00",
    this.data = "27/12/2025",
    this.bairro = "Bela Vista",
  });

  @override
  State<StatusDetalheEvento> createState() => _StatusDetalheEventoState();
}

class _StatusDetalheEventoState extends State<StatusDetalheEvento> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      decoration: BoxDecoration(
        color: MyColors.cinzaEscuro,
        borderRadius: BorderRadius.circular(42),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              widget.hora,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontFamily: "Inter",
              ),
            ),
          ),
          VerticalDivider(color: Colors.white, thickness: 1, width: 1, indent: 2, endIndent: 2),
          Expanded(
            child: Text(
              widget.data,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontFamily: "Inter",
              ),
            ),
          ),
          VerticalDivider(color: Colors.white, thickness: 1, width: 1, indent: 2, endIndent: 2),
          Expanded(
            child: Text(
              widget.bairro,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontFamily: "Inter",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
