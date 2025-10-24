import 'package:etkts_app/colors.dart';
import 'package:etkts_app/components/buttons/button.dart';
import 'package:etkts_app/components/cards/card_detalhe_produto_evento.component.dart';
import 'package:flutter/material.dart';

class DetalheEventoPage extends StatefulWidget {
  const DetalheEventoPage({super.key});

  static const String routeName = '/detalhe-evento';

  @override
  State<DetalheEventoPage> createState() => _DetalheEventoPageState();
}

class _DetalheEventoPageState extends State<DetalheEventoPage> {
  bool textoExpandido = false;
  double valorTotal = 450.00;

  // Controle da aba selecionada
  String abaSelecionada = "Ingressos";

  final String textoDescricao =
      "Texto descrição, uashduaihfsa, asidhaisd asuhda duagsidab afai as ashfus asudauhsda, ausdhadabis. "
      "Este é um texto mais longo para demonstrar a funcionalidade de expandir e recolher. "
      "Adicionando mais conteúdo para que o texto fique realmente grande e precise da opção Ler Mais.";

  void alternarExpansaoTexto() {
    setState(() {
      textoExpandido = !textoExpandido;
    });
  }

  void atualizarValorTotal(double novoValor) {
    setState(() {
      valorTotal = novoValor;
    });
  }

  /// Conteúdo aba selecionada
  Widget buildConteudoAba() {
    switch (abaSelecionada) {
      case "Cardápio":
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "Cardápio",
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              const SizedBox(height: 50),
            ],
          ),
        );

      case "Amigos":
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "Amigos",
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // Conteúdo simulado dos amigos

              const SizedBox(height: 50),
            ],
          ),
        );

      default: // Ingressos
        return SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 26.0, top: 20),
                  child: Text(
                    "Descrição",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26.0, right: 26, top: 8),
                child: textoExpandido
                    ? Text(textoDescricao, style: TextStyle(color: Colors.white))
                    : Text(
                  textoDescricao,
                  style: TextStyle(color: Colors.white),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (textoDescricao.length > 100)
                GestureDetector(
                  onTap: alternarExpansaoTexto,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 60,
                      height: 24,
                      decoration: BoxDecoration(
                        color: MyColors.cinzaMedioEscuro,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          textoExpandido ? "Ler -" : "Ler +",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              CardDetalheEventoComponent(),
              const SizedBox(height: 30),
              CardDetalheEventoComponent(),
              const SizedBox(height: 30),
              CardDetalheEventoComponent(),
              const SizedBox(height: 20),

              // ENDEREÇO E MAPA (só na aba Ingressos)
              Padding(
                padding: const EdgeInsets.only(left: 28.0, top: 8, right: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Endereço do evento - 233-03736160 - Avenida Endereço Completo do Local do Evento",
                          style: const TextStyle(color: Colors.white, fontSize: 14),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0, left: 8),
                      child: Image.asset("assets/images/mapa.png"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70),

              // TOTAL E BOTÃO PAGAR (só na aba Ingressos)
              Container(
                width: 363,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.white, width: 1.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Total", style: TextStyle(color: Colors.white, fontSize: 14)),
                          const SizedBox(height: 4),
                          Text(
                            "R\$ ${valorTotal.toStringAsFixed(2)}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Button(
                        onPressed: () {},
                        text: "Pagar",
                        textColor: Colors.black,
                        backgroundColor: MyColors.verde,
                        width: 100,
                        height: 40,
                        borderRadius: 10,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        );
    }
  }

  /// Menu das abas arredondado
  Widget buildMenuAbas() {
    final List<String> abas = ["Ingressos", "Cardápio", "Amigos"];
    return Container(
      width: double.infinity,
      height: 30,
      margin: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
      decoration: BoxDecoration(
        color: MyColors.cinzaMedioEscuro,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: abas.map((aba) {
          final bool selecionada = abaSelecionada == aba;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  abaSelecionada = aba;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                decoration: BoxDecoration(
                  color: selecionada ? MyColors.cinzaMedioEscuro : Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: Text(
                  aba,
                  style: TextStyle(
                    color: selecionada ? MyColors.verde : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Image.asset("assets/icons/voltarBranco.png"),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // carrinho
            },
            child: Image.asset("assets/icons/carrinhoBranco.png"),
          ),
        ],
      ),
      body: Column(
        children: [
          // IMAGEM DO EVENTO FIXA
          Container(
            width: 384,
            height: 195,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(42),
                bottomRight: Radius.circular(42),
              ),
            ),
            child: Image.asset("assets/images/imageEvent2.png", fit: BoxFit.cover),
          ),

          // TÍTULO FIXO
          Padding(
            padding: const EdgeInsets.only(left: 26.0, top: 20, right: 26),
            child: Row(
              children: [
                const Text(
                  "Título",
                  style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Image.asset("assets/icons/icon3d.png"),
              ],
            ),
          ),

          // MENU DAS ABAS
          buildMenuAbas(),

          // CONTEÚDO VARIÁVEL ROLÁVEL
          Expanded(child: buildConteudoAba()),
        ],
      ),
    );
  }
}
