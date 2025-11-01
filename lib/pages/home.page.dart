import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/components/cards/carrossel.component.dart';
import 'package:etkts_app/colors.dart';
import 'package:etkts_app/components/home_appbar.component.dart';
import 'package:etkts_app/components/home_button.component.dart';
import 'package:etkts_app/components/rodape_button.component.dart';
import 'package:etkts_app/services/home.service.dart';
import 'package:etkts_app/services/snackbar.service.dart';
import 'package:etkts_app/types.dart';
import 'package:flutter/material.dart';
import 'package:etkts_app/components/drawer/drawer.componente.dart';
import 'package:etkts_app/components/cards/card_evento.componente.dart';
import 'package:etkts_app/components/rodape/rodape_navigation.component.dart'; // Importe o rodapé
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'notificacoes.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  bool balanceVisible = true;
  double userBalance = 1250.75;
  bool searchExpanded = false;
  int currentIndex = 0;
  List<EventoHome> eventos = [];
  bool isLoading = false;
  final botoes = [
    HomeButtonComponentData(
      text: "Mensagem",
      svgAsset: "assets/icons/mensagem.svg",
      onTap: (context) {
        SnackbarService.showEmConstrucao(context);
      },
    ),
    HomeButtonComponentData(
      text: "Solicitações",
      svgAsset: "assets/icons/friend_add.svg",
      onTap: (context) {
        SnackbarService.showEmConstrucao(context);
      },
    ),
    HomeButtonComponentData(
      text: "Divisão",
      svgAsset: "assets/icons/path1.svg",
      onTap: (context) {
        SnackbarService.showEmConstrucao(context);
      },
    ),
    HomeButtonComponentData(
      text: "Pedidos",
      svgAsset: "assets/icons/campainha.svg",
      onTap: (context) {
        SnackbarService.showEmConstrucao(context);
      },
    ),
  ];

  late final List<RodapeButtonComponentData> navItems;

  @override
  void initState() {
    super.initState();
    navItems = [
      RodapeButtonComponentData(
        text: "Home",
        svgAsset: "assets/icons/home.svg",
        onTap: (context) {
          setState(() {
            currentIndex = 0;
          });
          SnackbarService.showEmConstrucao(context);
        },
      ),
      RodapeButtonComponentData(
        text: "Amigos",
        svgAsset: "assets/icons/friend_add.svg",
        onTap: (context) {
          setState(() {
            currentIndex = 1;
          });
          SnackbarService.showEmConstrucao(context);
        },
      ),
      RodapeButtonComponentData(
        text: "Carteira",
        svgAsset: "assets/icons/carteira.svg",
        onTap: (context) {
          setState(() {
            currentIndex = 2;
          });
          SnackbarService.showEmConstrucao(context);
        },
      ),
      RodapeButtonComponentData(
        text: "Mapa",
        svgAsset: "assets/icons/pinpoint.svg",
        onTap: (context) {
          setState(() {
            currentIndex = 3;
          });
          SnackbarService.showEmConstrucao(context);
        },
      ),
      RodapeButtonComponentData(
        text: "Perfil",
        svgAsset: "assets/icons/profile.svg",
        onTap: (context) {
          setState(() {
            currentIndex = 4;
          });
          SnackbarService.showEmConstrucao(context);
        },
      ),
    ];
    WidgetsBinding.instance.addPostFrameCallback(init);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  Future<void> init(Duration _) async {
    setState(() {
      isLoading = true;
    });
    var result = await HomeService.getHome();
    setState(() {
      isLoading = false;
    });
    if (result.value != null) {
      eventos = result.value!;
    } else {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(result.error!.toString())));
    }
  }

  Widget renderHome() {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return SizedBox(
      height: double.infinity,
      child: Stack(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 380.h,
                child: CarrosselComponent(eventos: eventos),
              ),
              IgnorePointer(
                ignoring: true,
                child: SizedBox(
                  height: 380.h,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          MyColors.preto.withValues(alpha: .5),
                          MyColors.preto.withValues(alpha: 1.0),
                        ],
                        stops: const [0.6, 0.8, 1],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 240.h,
            child: SizedBox(
              // height: MediaQuery.of(context).size.height - 240.h - 188,
              height: MediaQuery.of(context).size.height - 240.h - 85.h,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Grade de Cards
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: botoes
                          .map(
                            (e) => Expanded(
                          child: HomeButtonComponent(
                            text: e.text,
                            svgAsset: e.svgAsset,
                            onTap: e.onTap,
                          ),
                        ),
                      ).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 240.h - 172,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 10.w,
                          right: 10.w,
                          bottom: 55.h,
                      ),
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 25.w,
                          mainAxisSpacing: 5.h,
                          // childAspectRatio: .95,
                          mainAxisExtent: 195.h,
                        ),
                        itemCount: eventos.length,
                        itemBuilder: (context, index) {
                          return CardEventoComponente(
                            evento: eventos[index],
                            leftSideRounded: index % 2 == 0,
                            rightSideRounded: index % 2 == 1,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: RodapeNavigation(
              currentIndex: currentIndex,
              navItems: navItems,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: HomeAppBarComponent(),
        // appBar: AppBar(
        //   toolbarHeight: 49,
        //   backgroundColor: Colors.amber,
        //   bottom: PreferredSize(preferredSize: Size(0, 0), child: Center()),
        //   leading: Builder(
        //     builder: (context) => IconButton(
        //       icon: const Icon(Icons.menu, color: Colors.white),
        //       onPressed: () {
        //         Scaffold.of(context).openDrawer();
        //       },
        //     ),
        //   ),
        //   title: AnimatedContainer(
        //     padding: EdgeInsets.zero,
        //     duration: const Duration(milliseconds: 300),
        //     curve: Curves.easeInOut,
        //     width: searchExpanded ? double.infinity : null,
        //     child: Row(
        //       children: [
        //         if (!searchExpanded) ...[
        //           const CircleAvatar(
        //             radius: 15,
        //             backgroundImage: AssetImage('assets/images/fotoEvento.png'),
        //           ),
        //           const SizedBox(width: 12),
        //           Expanded(
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 const Text(
        //                   'User Name',
        //                   style: TextStyle(color: Colors.white, fontSize: 16),
        //                 ),
        //                 Row(
        //                   children: [
        //                     Text(
        //                       balanceVisible
        //                           ? 'R\$${userBalance.toStringAsFixed(2).replaceAll('.', ',')}'
        //                           : ' ******',
        //                       style: const TextStyle(
        //                         color: Colors.grey,
        //                         fontSize: 14,
        //                       ),
        //                     ),
        //                     const SizedBox(width: 8),
        //                     GestureDetector(
        //                       onTap: () {
        //                         setState(() {
        //                           balanceVisible = !balanceVisible;
        //                         });
        //                       },
        //                       child: Icon(
        //                         balanceVisible
        //                             ? Icons.visibility
        //                             : Icons.visibility_off,
        //                         color: Colors.grey,
        //                         size: 16,
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //         if (searchExpanded) ...[
        //           Expanded(
        //             child: TextField(
        //               controller: searchController,
        //               autofocus: true,
        //               style: const TextStyle(color: Colors.white, fontSize: 16),
        //               decoration: const InputDecoration(
        //                 isDense: true,
        //                 hintText: 'Pesquisar...',
        //                 hintStyle: TextStyle(color: Colors.white54),
        //                 border: InputBorder.none,
        //                 contentPadding: EdgeInsets.only(bottom: 15),
        //               ),
        //               onSubmitted: (value) {
        //                 debugPrint('Texto pesquisado: $value');
        //               },
        //             ),
        //           ),
        //           IconButton(
        //             icon: const Icon(Icons.close, color: Colors.white, size: 20),
        //             onPressed: () {
        //               setState(() {
        //                 searchExpanded = false;
        //                 searchController.clear();
        //               });
        //             },
        //           ),
        //         ],
        //       ],
        //     ),
        //   ),
        //   actions: [
        //     if (!searchExpanded)
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: InkWell(
        //           onTap: () {
        //             setState(() {
        //               searchExpanded = true;
        //             });
        //           },
        //           child: Image.asset(
        //             'assets/icons/pesquisa.png',
        //             width: 23,
        //             height: 21,
        //             color: Colors.white,
        //           ),
        //         ),
        //       ),
        //     if (AppState.isLogged)
        //       Padding(
        //         padding: const EdgeInsets.only(right: 14.0),
        //         child: InkWell(
        //           onTap: () {
        //             context.push(NotificacoesPage.routeName);
        //           },
        //           child: Image.asset(
        //             'assets/icons/bell2.png',
        //             width: 23,
        //             height: 22,
        //             color: Colors.white,
        //           ),
        //         ),
        //       ),
        //   ],
        // ),
        drawer: const DrawerComponente(),
        body: renderHome(),
      ),
    );
  }
}
