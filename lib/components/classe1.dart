import 'package:flutter/material.dart';

class Classe1 extends StatefulWidget {
  const Classe1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Classe1> createState() => __Classe1PageState();
}

class __Classe1PageState extends State<Classe1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: centralizar(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            criarBotao(texto: 'Cliente 1', acao: CliqueCliente),
            criarBotao(texto: 'Funcionario 1', acao: CliqueFuncionario),
            criarBotao(texto: 'Fornecedor 1', acao: CliqueFornecedor),
          ],
        ),
      ),
    );
  }

  void CliqueCliente() {
    Navigator.pushNamed(context, '/telas');
  }

  void CliqueFuncionario() {
    print('Funcionario');
  }

  void CliqueFornecedor() {
    print('Fornecedor');
  }

  Widget centralizar(Widget widget) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Center(child: widget),
    );
  }

  Widget criarBotao({required String texto, required Function acao}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton.icon(
        label: Text(
          texto,
          style: TextStyle(fontSize: 25),
        ),
        onPressed: () {
          acao();
        },
        icon: const Icon(Icons.person),
        style: ElevatedButton.styleFrom(
            primary: Colors.amber, shape: const StadiumBorder()),
      ),
    );
  }
}
