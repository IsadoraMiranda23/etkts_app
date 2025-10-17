import 'package:etikts_app/components/buttons/button.dart';
import 'package:etikts_app/auth/pages/evento.page.dart';
import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("assets/logos/logoCompletoVerde.png"
                ,width: 56,
                height: 46,
              ),
            ),
            Center(
              child: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Container(
                    width: 370,
                    height: 730,
                    decoration: BoxDecoration(
                      color: MyColors.cinzaEscuro,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(42),
                        topRight: Radius.circular(42),
                        bottomRight: Radius.circular(42),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 50),


                        SizedBox(
                          width: 300,
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft
                                 , child: Text("E-mail", style: TextStyle(color: Colors.white,fontSize: 17),)),
                              TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(

                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  labelStyle: TextStyle(color: Colors.white, fontSize: 19),


                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),

                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Por favor digite seu e-mail';
                                  }
                                  if (!value.contains('@')) {
                                    return 'E-mail inválido';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                         SizedBox(height: 26),


                        SizedBox(
                          width: 300,
                          child: Column(
                            children: [
                              Align(
                              alignment: Alignment.centerLeft
                                  ,child: Text("Senha", style: TextStyle(color: Colors.white,fontSize: 17),)),

                              TextFormField(
                                controller: passwordController,
                                decoration: InputDecoration(

                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  labelStyle: TextStyle(color: Colors.white, fontSize: 19),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      obscurePassword
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.white38,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        obscurePassword = !obscurePassword;
                                      });
                                    },
                                  ),


                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white, width: 1.5),
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white, width: 1.5),
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                                obscureText: obscurePassword,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Por favor digite sua senha';
                                  }
                                  if (value.length < 6) {
                                    return 'Senha deve ter pelo menos 6 caracteres';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),

                        SizedBox(
                            child: Button(
                              onPressed: (){
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => EventoPage()));
                              },
                              text: 'Entrar',
                              borderRadius: 18,
                              width: 300,
                              height: 50,
                            )
                        ),
                        const SizedBox(height: 16),

                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 95,
                                height: 1,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 40.0, left: 40),
                                child: Text(
                                  "ou",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                width: 95,
                                height: 1,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(child: Image.asset("assets/logos/google.png", width: 98, height: 89,)),
                              SizedBox(width: 85,),
                              GestureDetector(child: Image.asset("assets/logos/apple.png", width: 99, height: 89,))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0,top: 1),
                          child: InkWell(
                            child: Text(
                              "esqueceu a senha?",
                              style: TextStyle(color: MyColors.verde, fontSize: 16),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Button(
                            onPressed: (){},
                            text: 'Cadastrar',
                            textColor: Colors.white,
                            borderRadius: 16,
                            backgroundColor: MyColors.roxo,
                            borderColor: MyColors.roxo,
                            width: 300,
                            height: 45,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            child: Text(
                              "entrar como estabelecimento",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}