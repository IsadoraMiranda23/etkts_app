import 'package:etikts_app/colors.dart';
import 'package:etikts_app/components/buttons/button.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  // Controllers
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController confirmarSenhaController = TextEditingController();

  // Estados
  bool isChecked = false;



  void mostrarPopupErro(String mensagem) {
    showDialog(
      context: context,
      barrierColor: Colors.black54,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: const EdgeInsets.all(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: AlertDialog(
                backgroundColor: MyColors.cinzaEscuro.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.circular(42),
                    bottomLeft: Radius.circular(42),
                    bottomRight: Radius.circular(42),
                  ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Alerta! ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Icon(
                          Icons.error_outline,
                          color: MyColors.roxo,
                          size: 20,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      mensagem,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Button(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      text: "OK",
                      borderRadius: 25,
                      backgroundColor: MyColors.verde,
                      borderColor: MyColors.verde,
                      width: 78,
                      height: 36,
                      textColor: Colors.black54,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void validarCadastro() {
    if (confirmarSenhaController.text.isEmpty) {
      mostrarPopupErro("Por favor, confirme sua senha");
    } else if (senhaController.text != confirmarSenhaController.text) {
      mostrarPopupErro("As senhas não coincidem");
    } else if (!isChecked) {
      mostrarPopupErro("Você precisa aceitar os termos de uso");
    } else {
      print("Cadastro realizado com sucesso!");
      // lógica de cadastro
    }
  }

  // ========== WIDGETS DE FORMULÁRIO ==========

  Widget buildInputField(String hintText) {
    return Container(
      height: 38,
      width: 330,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white, width: 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: TextField(
          style: const TextStyle(color: Colors.white, fontSize: 14),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ),
      ),
    );
  }

  Widget buildPasswordField(String hintText, TextEditingController controller) {
    return Container(
      height: 38,
      width: 330,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white, width: 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: TextField(
          controller: controller,
          obscureText: true,
          style: const TextStyle(color: Colors.white, fontSize: 14),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ),
      ),
    );
  }


  @override
  void dispose() {
    senhaController.dispose();
    confirmarSenhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Logo
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Image.asset(
                  "assets/logos/logoCompletoVerde.png",
                  width: 56,
                  height: 46,
                ),
              ),
            ),

            // Título
            Padding(
              padding: const EdgeInsets.only(left: 40.0, top: 15, bottom: 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Vamos Começar!",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),

            // Linha verde
            Padding(
              padding: const EdgeInsets.only(left: 40.0, bottom: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 180,
                  height: 1.3,
                  color: MyColors.verde,
                ),
              ),
            ),

            // Foto de perfil
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 20, bottom: 20),
                  child: CircleAvatar(
                    minRadius: 28,
                    maxRadius: 47,
                    backgroundColor: MyColors.cinzaMedioEscuro,
                    child: Icon(Icons.person, size: 55, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 38.0, left: 110),
                  child: Button(
                    onPressed: () {},
                    backgroundColor: MyColors.cinzaEscuro,
                    text: "Adicionar foto",
                    textColor: Colors.white,
                    borderColor: MyColors.cinzaEscuro,
                    width: 125,
                    height: 35,
                    fontSize: 12,
                  ),
                ),
              ],
            ),

            // Inputs de cadastro
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 22.0,
                  vertical: 10.0,
                ),
                child: Column(
                  children: [
                    // Nome Completo
                    buildInputField("Nome Completo"),
                    const SizedBox(height: 20),

                    // Instagram
                    buildInputField("@ instagram"),
                    SizedBox(height: 15),

                    // E-mail
                    buildInputField("E-mail"),
                    SizedBox(height: 20),

                    // Telefone
                    buildInputField("Telefone"),
                    SizedBox(height: 20),

                    // CPF
                    buildInputField("CPF"),
                    SizedBox(height: 20),

                    // Senha
                    buildPasswordField("Senha", senhaController),
                    SizedBox(height: 20),

                    // Confirmar Senha
                    buildPasswordField("Confirmar Senha", confirmarSenhaController),
                    SizedBox(height: 20),

                    // Checkbox de termos
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10),
                      child: Row(
                        children: [
                          // Checkbox customizado mais arredondado
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: isChecked ? MyColors.verde : Colors.transparent,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(color: MyColors.verde, width: 2),
                            ),
                            child: Theme(
                              data: ThemeData(
                                unselectedWidgetColor: Colors.transparent,
                              ),
                              child: Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value ?? false;
                                  });
                                },
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                visualDensity: VisualDensity.compact,
                                fillColor: MaterialStateProperty.all(Colors.transparent),
                                checkColor: Colors.white,
                                side: BorderSide.none,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          InkWell(
                            onTap: () {
                              // termos de uso
                            },
                            child: Text(
                              "Termos de uso",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),

                    // Botões
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              "assets/icons/seta.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                          SizedBox(width: 190),
                          Button(
                            onPressed: validarCadastro,
                            text: "Cadastrar",
                            width: 110,
                            height: 39,
                            backgroundColor: MyColors.verde,
                            borderColor: MyColors.verde,
                            textColor: Colors.black54,
                            borderRadius: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
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