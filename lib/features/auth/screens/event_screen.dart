import 'package:etikts_app/components/cards/carrossel.component.dart';
import 'package:etikts_app/shared/design_system/colors.dart';
import 'package:flutter/material.dart';

import '../../../components/cards/card_evento_componente.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.preto,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/images/useAvatar.png'),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User Name',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'R\$ 1.234,56',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Image.asset(
                'assets/icons/pesquisa.png',
                width: 20, // Ajuste para o tamanho desejado
                height: 20,
                color: Colors.white,
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: InkWell(
              child: Image.asset(
                'assets/icons/bell2.png',
                width: 20, // Ajuste para o tamanho desejado
                height: 20,
                color: Colors.white,
              ),

            ),
          ),

        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: MyColors.preto),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarrosselComponent(),
              const SizedBox(height: 20),
              // Grade de Cards
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0), // Padding lateral
                child: GridView.builder(
                  shrinkWrap: true, // Para usar dentro do SingleChildScrollView
                  physics: const NeverScrollableScrollPhysics(), // Para rolar apenas o SingleChildScrollView
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Dois cards por linha
                    crossAxisSpacing: 8, // Espacamento horizontal
                    mainAxisSpacing: 20, // Espacamento vertical
                    childAspectRatio: 0.75, // Proporcao largura/altura do card
                  ),
                  itemCount: 10, // Substitua pelo numero real de itens
                  itemBuilder: (context, index) {
                    return const CardEventoComponente();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}