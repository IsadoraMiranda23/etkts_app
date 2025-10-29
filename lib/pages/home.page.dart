import 'package:etkts_app/app_state.dart';
import 'package:etkts_app/components/cards/carrossel.component.dart';
import 'package:etkts_app/colors.dart';
import 'package:etkts_app/services/home.service.dart';
import 'package:etkts_app/services/snackbar.service.dart';
import 'package:etkts_app/types.dart';
import 'package:flutter/material.dart';
import 'package:etkts_app/components/drawer/drawer.componente.dart';
import 'package:etkts_app/components/cards/card_evento.componente.dart';
import 'package:etkts_app/components/rodape/rodape_navigation.component.dart'; // Importe o rodapé
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(getHome);
  }

  Future<void> getHome(Duration _) async {
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

  Widget renderScreen(int index) {
    switch (index) {
      case 0:
        return const Center(
          child: Text('Tela Início', style: TextStyle(color: Colors.white)),
        );
      case 1:
        return EventoPageContent(eventos: eventos);
      default:
        return const Center(
          child: Text('Tela Perfil', style: TextStyle(color: Colors.white)),
        );
    }
  }

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });

    // Navegação entre telas
    if (index == 0) {
      // Navegar para tela inicial
    } else if (index == 1) {
      // Já está na tela de eventos
      SnackbarService.showEmConstrucao(context);
    } else if (index == 2) {
      SnackbarService.showEmConstrucao(context);
    } else if (index == 3) {
      SnackbarService.showEmConstrucao(context);
    } else if (index == 4) {
      SnackbarService.showEmConstrucao(context);
    }
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
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
              if (!searchExpanded && AppState.isLogged) ...[
                const CircleAvatar(
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
                            balanceVisible
                                ? 'R\$${userBalance.toStringAsFixed(2).replaceAll('.', ',')}'
                                : ' ******',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                balanceVisible = !balanceVisible;
                              });
                            },
                            child: Icon(
                              balanceVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
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
                      debugPrint('Texto pesquisado: $value');
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
          if (AppState.isLogged)
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: InkWell(
                onTap: () {
                  context.push(NotificacoesPage.routeName);
                },
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
      drawer: const DrawerComponente(),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : EventoPageContent(eventos: eventos),
      // Exibe a tela atual baseada no índice
      bottomNavigationBar: RodapeNavigation(
        currentIndex: currentIndex,
        onTap: onItemTapped,
      ),
    );
  }
}

class EventoPageContent extends StatelessWidget {
  const EventoPageContent({super.key, required this.eventos});

  final List<EventoHome> eventos;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: MyColors.preto.withValues()),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 350,
                  child: CarrosselComponent(eventos: eventos),
                ),
                const SizedBox(height: 55),
                // Grade de Cards
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                       SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 25.w,
                          mainAxisSpacing: 15.h,
                         childAspectRatio: .93
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
              ],
            ),
            Positioned(
              top: 330,
              left: 0,
              right: 0,
              height: 40,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      MyColors.preto.withValues(alpha: 0.7),
                      MyColors.preto.withValues(alpha: 0.8),
                      MyColors.preto.withValues(alpha: 1.0),
                    ],
                    stops: const [0.0, 0.3, 0.7, 1.0],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 290,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.all(5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        SnackbarService.showEmConstrucao(context);
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 50.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.zero,
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.zero,
                              ),
                              color: MyColors.cinzaEscuro,
                            ),
                            child: Image.asset(
                              "assets/icons/balaoVerde.png",
                              height: 50,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              "Mensagem",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        SnackbarService.showEmConstrucao(context);
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 50.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.zero,
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.zero,
                              ),
                              color: MyColors.cinzaEscuro,
                            ),
                            child: Image.asset(
                              "assets/icons/perfilVerde.png",
                              height: 50,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              "Solicitações",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Ícone Divisão
                    GestureDetector(
                      onTap: () {
                        SnackbarService.showEmConstrucao(context);
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 50.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.zero,
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.zero,
                              ),
                              color: MyColors.cinzaEscuro,
                            ),
                            child: Image.asset(
                              "assets/icons/divisaoVerde.png",
                              height: 50,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              "Divisão",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Ícone Pedidos
                    GestureDetector(
                      onTap: () {
                        SnackbarService.showEmConstrucao(context);
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 50.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.zero,
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.zero,
                              ),
                              color: MyColors.cinzaEscuro,
                            ),
                            child: Image.asset(
                              "assets/icons/sinoVerde.png",
                              height: 50,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              "Pedidos",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
