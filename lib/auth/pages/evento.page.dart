import 'package:etikts_app/components/cards/carrossel.component.dart';
import 'package:etikts_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:etikts_app/components/drawer/drawer.componente.dart';

import '../../../components/cards/card_evento.componente.dart';
import '../../colors.dart';

class EventoPage extends StatefulWidget {
  const EventoPage({super.key});

  @override
  State<EventoPage> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventoPage> {
  final TextEditingController searchController = TextEditingController();
  bool balanceVisible = true;
  double userBalance = 1250.75;
  bool searchExpanded = false;

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.preto,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: searchExpanded ? double.infinity : null,
          child: Row(
            children: [
              if (!searchExpanded) ...[
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/fotoEvento.png'),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'User Name',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Row(
                        children: [
                          Text(
                            balanceVisible ? 'R\$${userBalance.toStringAsFixed(2).replaceAll('.', ',')}' : ' ******',
                            style: const TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          const SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                balanceVisible = !balanceVisible;
                              });
                            },
                            child: Icon(
                              balanceVisible ? Icons.visibility : Icons.visibility_off,
                              color: Colors.grey,
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],

              if (searchExpanded) ...[
                Expanded(
                  child: TextField(
                    controller: searchController,
                    autofocus: true,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    decoration: const InputDecoration(
                      isDense: true,
                      hintText: 'Pesquisar...',
                      hintStyle: TextStyle(color: Colors.white54),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(bottom: 15),
                    ),
                    onSubmitted: (value) {
                      print('Texto pesquisado: $value');
                    },
                  ),
                ),

                IconButton(
                  icon: const Icon(Icons.close, color: Colors.white, size: 20),
                  onPressed: () {
                    setState(() {
                      searchExpanded = false;
                      searchController.clear();
                    });
                  },
                ),
              ],
            ],
          ),
        ),
        actions: [
          if (!searchExpanded)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    searchExpanded = true;
                  });
                },
                child: Image.asset(
                  'assets/icons/pesquisa.png',
                  width: 23,
                  height: 21,
                  color: Colors.white,
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: InkWell(
              child: Image.asset(
                'assets/icons/bell2.png',
                width: 23,
                height: 22,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      drawer:  DrawerComponente(),
      body: Container(
        decoration: BoxDecoration(color: MyColors.preto),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: CarrosselComponent(),
              ),


              Positioned(
                top: 345,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black87..withValues(alpha: 0.1),
                        MyColors.preto.withValues(alpha: 0.1),
                        MyColors.preto.withValues(alpha: 0.2),
                        MyColors.preto..withValues(alpha: 0.2),
                      ],
                      stops: [0.1, 0.3,0.5, 0.4],
                    ),
                  ),
                ),
              ),

              Column(
                children: [
                  SizedBox(height: 280),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: 55,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.zero,
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.zero,
                              ),
                              color: MyColors.cinzaEscuro,
                            ),
                            child: Image.asset("assets/icons/balaoVerde.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: 55,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.zero,
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.zero,
                              ),
                              color: MyColors.cinzaEscuro,
                            ),
                            child: Image.asset("assets/icons/perfilVerde.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: 55,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.zero,
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.zero,
                              ),
                              color: MyColors.cinzaEscuro,
                            ),
                            child: Image.asset("assets/icons/divisaoVerde.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: 55,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.zero,
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.zero,
                              ),
                              color: MyColors.cinzaEscuro,
                            ),
                            child: Image.asset("assets/icons/sinoVerde.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  // Grade de Cards
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 2,
                        childAspectRatio: 0.75,
                      ),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return  CardEventoComponente();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}