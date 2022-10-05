import 'package:aulinha_ne_pai/components/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CartaoRetrato extends StatelessWidget {
  const CartaoRetrato({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Container(
      padding: EdgeInsets.all(60),
      child: Column(
        children: [
          Avatar(
            raio: 100,
          ),
          Text('BORAAAA')
        ],
      ),
    );
  }
}
