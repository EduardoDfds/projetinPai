import 'package:aulinha_ne_pai/components/avatar.dart';
import 'package:aulinha_ne_pai/components/cartaoInformacao.dart';
import 'package:flutter/material.dart';

class CartaoAdaptativo extends StatefulWidget {
  const CartaoAdaptativo({Key? key}) : super(key: key);

  @override
  State<CartaoAdaptativo> createState() => _CartaoAdaptativoState();
}

class _CartaoAdaptativoState extends State<CartaoAdaptativo> {



  
  Widget retrato() {
    return Container(
      padding: const EdgeInsets.all(80),
      child: Column(
        children: const [
          Avatar(
            raio: 100,
          ),
          CartaoInformacao()
        ],
      ),
    );
  }

  Widget paisagem() {
    return Container(
      padding: const EdgeInsets.all(80),
      child: Row(
        children: const [Avatar(raio: 50), CartaoInformacao()],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      Widget tela;
      if (orientation == Orientation.portrait) {
        tela = retrato();
      } else {
        tela = paisagem();
      }
      return Scaffold(body: tela);
    });
  }
}
