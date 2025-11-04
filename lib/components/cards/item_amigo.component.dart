import 'package:etkts_app/colors.dart';
import 'package:etkts_app/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemAmigoComponent extends StatefulWidget {
  final String usuario;
  final String foto;

  const ItemAmigoComponent({super.key, this.usuario = "Nome do Usuario", required this.foto});

  @override
  State<ItemAmigoComponent> createState() => _ItemAmigoComponentState();
}

class _ItemAmigoComponentState extends State<ItemAmigoComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
            radius: 20,
          backgroundImage: AssetImage("assets/images/${widget.foto}"),
        ),
        SizedBox(width: 15.w),
        Text(
          widget.usuario,
          style: MyTypography.interRegular13,
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 42.w,),
          child: Icon(Icons.check, color: MyColors.verde, size: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
