import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelaCampo extends StatefulWidget {
  const TelaCampo({Key? key}) : super(key: key);

  @override
  State<TelaCampo> createState() => _TelaCampoState();
}

class _TelaCampoState extends State<TelaCampo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              criarInput(
                  'Digite seu nome', Icon(Icons.person), TextInputType.text),
              criarInput('Digite seu e-mail', Icon(Icons.mail),
                  TextInputType.emailAddress),
              criarInput('Digite seu e-mail', Icon(Icons.password),
                  TextInputType.visiblePassword),
            ],
          ),
        ),
      ),
    );
  }

  Widget criarInput(String texto, Icon icone, TextInputType tipo) {
    return SizedBox(
      child: TextField(
        keyboardType: tipo,
        decoration: InputDecoration(
            border: InputBorder.none, icon: icone, hintText: texto),
      ),
    );
  }
}
