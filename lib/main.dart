import 'package:aulinha_ne_pai/components/classe1.dart';
import 'package:aulinha_ne_pai/components/classe2.dart';
import 'package:aulinha_ne_pai/components/classe3.dart';
import 'package:aulinha_ne_pai/components/telaCampo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        routes: {
          '/': (context) => MyHomePage(title: 'Projetin'),
          '/classe1': (context) => const Classe1(
                title: 'Classe1',
              ),
          '/classe2': (context) => const Classe2(
                title: 'Classe2',
              ),
          '/classe3': (context) => const Classe3(
                title: 'Classe3',
              ),
          '/telas': (context) => const TelaCampo()
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                    'Cliente',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/classe1');
                  },
                  icon: const Icon(Icons.person),
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  label:
                      const Text('Funcionario', style: TextStyle(fontSize: 25)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/classe2');
                  },
                  icon: const Icon(Icons.person),
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  label:
                      const Text('Forncedor', style: TextStyle(fontSize: 25)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/classe3');
                  },
                  icon: const Icon(Icons.person),
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Botao {}

/*
class Estado {
  int id;
  String nome;
  String sigla;

  Estado({required this.id, required this.nome, required this.sigla});
}

class Cidade {
  int id;
  String nome;
  Estado estado;

  Cidade({required this.id, required this.nome, required this.estado});
}

void executar() {
  var estado = Estado(id: 1, nome: 'Paraná', sigla: 'PR');
  var cidade = Cidade(id: 1, nome: 'Belem', estado: Estado(id: 2, nome: 'Para',
  sigla: 'PA'));
}*/
