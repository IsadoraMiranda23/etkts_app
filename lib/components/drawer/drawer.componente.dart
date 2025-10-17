import 'package:flutter/material.dart';
import 'package:etikts_app/colors.dart';

import '../../colors.dart';

class DrawerComponente extends StatefulWidget {
  const DrawerComponente({super.key});

  @override
  State<DrawerComponente> createState() => _DrawerComponenteState();
}

class _DrawerComponenteState extends State<DrawerComponente> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 410,
      backgroundColor: Colors.transparent,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          decoration: const BoxDecoration(color: MyColors.preto),

          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 370,
              height: 780,
              decoration: const BoxDecoration(
                color: MyColors.cinzaMedioEscuro,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(42),
                  topLeft: Radius.circular(42),
                  bottomRight: Radius.circular(42),
                ),
              ),
              child: Column(
                children: [
                  // Header com altura reduzida
                  Container(
                    height: 120, // Altura reduzida do header
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset("assets/icons/voltarBranco.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 92.0),
                            child: Image.asset(
                              "assets/logos/logoCompletoBranco.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Linha divisória
                  const Divider(color: Colors.white, height: 3, thickness: 3),
                  // Lista de itens
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Container(
                                width: 30, // Ícone aumentado
                                height: 30, // Ícone aumentado
                                child: Image.asset(
                                  "assets/icons/homeVerde.png",
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Home",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18, // Texto aumentado
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Container(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  "assets/icons/carteiraVerde.png",
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Meus Cartões",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Container(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  "assets/icons/coracaoVerde.png",
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Favoritos",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Container(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  "assets/icons/voucherVerde.png",
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Ingressos",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Container(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  "assets/icons/transfVerde.png",
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Transferências",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Container(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  "assets/icons/perfilVerde.png",
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Perfil",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Container(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  "assets/icons/configVerde.png",
                                ),
                              ),
                            

                              title: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Configurações",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                          SizedBox(height: 60),
                          const Divider(
                            color: MyColors.preto,
                            height: 3,
                            thickness: 3,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Container(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  "assets/icons/sairVerde.png",
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Sair",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.pop(context);



                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
