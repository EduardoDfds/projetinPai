import 'package:flutter/material.dart';

class Classe3 extends StatefulWidget {
  const Classe3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Classe3> createState() => __Classe3PageState();
}

class __Classe3PageState extends State<Classe3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  label: const Text(
                    'Cliente 3',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(), primary: Colors.blue[900]),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  label: const Text('Funcionario 3',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(), primary: Colors.white),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  label:
                      const Text('Forncedor 3', style: TextStyle(fontSize: 25)),
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(), primary: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
