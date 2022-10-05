import 'package:aulinha_ne_pai/components/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CartaoPaisagem extends StatelessWidget {
  const CartaoPaisagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return Column(
      children: [
        Avatar(
          raio: 100,
        )
      ],
    );
  }
}
