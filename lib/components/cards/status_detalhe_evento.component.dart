import 'package:etkts_app/colors.dart';
import 'package:flutter/material.dart';

class StatusDetalheEvento extends StatefulWidget {
  final String hora;
  final String data;
  final String bairro;
  const StatusDetalheEvento({
    super.key,
    this.hora = "00:00",
    this.data = "27/12/2025",
    this.bairro = "Bela Vista"
  });

  @override
  State<StatusDetalheEvento> createState() => _StatusDetalheEventoState();
}

class _StatusDetalheEventoState extends State<StatusDetalheEvento> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:365 ,
      height:27 ,
      decoration: BoxDecoration(
        color: MyColors.cinzaEscuro,
          borderRadius: BorderRadius.circular(42)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right:28.0),
            child: Text(widget.hora,style: TextStyle(color: Colors.white, fontFamily:"Inter"),),
          ),
          Container(
            color: Colors.white,
            width: 1,
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: Text(widget.data,style: TextStyle(color: Colors.white,fontFamily:"Inter")),
          ),
          Container(
            color: Colors.white,
            width: 1,
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left:   18.0),
            child: Text(widget.bairro,style: TextStyle(color: Colors.white, fontFamily:"Inter")),
          ),


        ],
      ),
    );
  }
}
