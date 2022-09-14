import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  String texto;
  Function acao;
  Color cor;

  Botao({Key? key, required this.texto, required this.acao, required this.cor}) : super(key: key);

  @override
  Widget build(BuildContext context, ) {
    // TODO: implement build
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
