import 'package:etkts_app/pages/login.page.dart';
import 'package:etkts_app/services/snackbar.service.dart';
import 'package:flutter/material.dart';
import 'package:etkts_app/colors.dart';
import 'package:go_router/go_router.dart';

class DrawerComponente extends StatefulWidget {
  const DrawerComponente({super.key});

  @override
  State<DrawerComponente> createState() => _DrawerComponenteState();
}

class _DrawerComponenteState extends State<DrawerComponente> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * .8,
      backgroundColor: Colors.transparent,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(

          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 370,
              height: 690,
              decoration: const BoxDecoration(
                color: MyColors.cinzaMedioEscuroTransparente,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(42),
                  topLeft: Radius.circular(42),
                  bottomRight: Radius.circular(42),
                ),
              ),
              child: Column(
                children: [

                  Container(
                    height: 100, // Altura reduzida do header
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
                            padding: const EdgeInsets.only(left: 85.0),
                            child: Image.asset(
                              "assets/logos/logoCompletoBranco.png",
                              width: 55,
                              height: 44,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Linha divisória
                   Divider(color: Colors.white, height: 3, thickness: 3),
                  // Lista de itens
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(4.0),
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
                                child: Row(
                                  children: [
                                    Text(
                                      "Adicionar crédito",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      "assets/icons/setaDrawer.png",
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                SnackbarService.showEmConstrucao(context);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ListTile(
                              leading: Container(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  "assets/icons/cartaoCreditoVerde.png",
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Meus Cartões",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      "assets/icons/setaDrawer.png",
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                SnackbarService.showEmConstrucao(context);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
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
                                child: Row(
                                  children: [
                                    Text(
                                      "Ingressos",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      "assets/icons/setaDrawer.png",
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                SnackbarService.showEmConstrucao(context);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
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
                                child: Row(
                                  children: [
                                    Text(
                                      "Transferências",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      "assets/icons/setaDrawer.png",
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                SnackbarService.showEmConstrucao(context);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ListTile(
                              leading: Container(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  "assets/icons/perfilDrawerVerde.png",
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Perfil",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      "assets/icons/setaDrawer.png",
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                SnackbarService.showEmConstrucao(context);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
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
                                child: Row(
                                  children: [
                                    Text(
                                      "Configurações",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      "assets/icons/setaDrawer.png",
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                SnackbarService.showEmConstrucao(context);
                              },
                            ),
                          ),
                          const SizedBox(height: 120),
                          const Divider(
                            color: Colors.white,
                            height: 2,
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
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              onTap: () {
                                context.pushReplacement(LoginPage.routeName);
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
