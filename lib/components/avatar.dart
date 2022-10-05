import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String urlImagem =
      'https://portalwp.s3.amazonaws.com/wp-content/uploads/20200114073652/1.jpg';
  final double raio;
  const Avatar({Key? key, required this.raio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(urlImagem),
      radius: raio,
    );
  }
}
