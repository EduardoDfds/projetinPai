import 'package:aulinha_ne_pai/components/botao.dart';
import 'package:flutter/material.dart';

class Classe2 extends StatefulWidget {
  const Classe2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Classe2> createState() => __Classe2PageState();
}

class __Classe2PageState extends State<Classe2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: centralizar(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Botao(
              texto: 'Cliente',
              acao: CliqueCliente,
              cor: Colors.red,
            ),
            Botao(
                texto: 'Funcionario',
                acao: () => print('Funcionario'),
                cor: Colors.yellow),
            Botao(
                texto: 'Fornecedor',
                acao: () => print('Fornecedor'),
                cor: Colors.green),
          ],
        ),
      ),
    );
  }

  void CliqueCliente() {
    print('Cliente');
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

  Widget criarBotao(
      {required String texto, required Function acao, required Color cor}) {
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
            primary: cor, shape: const StadiumBorder()),
      ),
    );
  }
}
