import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Meus aplicativos"),
        ),
        body: ListView(
          children: [
            Card(
              child: ListTile(
                onTap: () {
                  Modular.to.navigate('/imc');
                },
                title: Text("Calcular IMC"),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Modular.to.navigate('/price');
                },
                title: Text("Conversor de Moedas"),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Modular.to.navigate('/cpf');
                },
                title: Text("Validador de CPF"),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Modular.to.navigate('/movies');
                },
                title: Text("Lista de Filmes"),
              ),
            )
          ],
        ));
  }
}
