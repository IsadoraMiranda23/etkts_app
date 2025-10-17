import 'package:flutter/material.dart';

class NotificacaoUsuarioComponent extends StatefulWidget {
  const NotificacaoUsuarioComponent({super.key});

  @override
  State<NotificacaoUsuarioComponent> createState() => _NotificacaoUsuarioComponentState();
}

class _NotificacaoUsuarioComponentState extends State<NotificacaoUsuarioComponent> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 346,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(42),
        border: Border.all(color: Colors.white),
      ),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            maxRadius: 30,
          ),
        ),
        Text("Solicitação", style: TextStyle(color: Colors.white),),
        Spacer(),
       Image.asset("assets/icons/aceiteIcon.png",width: 27,height: 25,),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Image.asset("assets/icons/negarIcon.png",width: 27,height: 25,),
        ),


      ],),
    );
  }
}
