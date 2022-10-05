import 'package:aulinha_ne_pai/components/avatar.dart';
import 'package:aulinha_ne_pai/components/cartaoInformacao.dart';
import 'package:flutter/material.dart';

class CartaoResponsivel extends StatefulWidget {
  const CartaoResponsivel({Key? key}) : super(key: key);

  @override
  State<CartaoResponsivel> createState() => _CartaoResponsivelState();
}

class _CartaoResponsivelState extends State<CartaoResponsivel> {
  var quantidade;
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return Scaffold(
        body: GridView.count(
          crossAxisCount: (orientation == Orientation.portrait) ? 1 : 2,
          children: const [
            Avatar(
              raio: 100,
            ),
            CartaoInformacao()
          ],
        ),
      );
    });
  }
}
