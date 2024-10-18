import 'package:app_adventuretime/Models/adventuretime.dart';
import 'package:app_adventuretime/widgets/card_personagens.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  var personagens = [
    Personagem("BMO", "BMO mais tarde conhecido como Rei de Ooo é um videogame e computador criado por Moseph Mastro Giovani, e que logo depois se tornou de Finn e Jake.", "bmo.jpg"),
    Personagem("Finn", "Finn Mertens, vive procurando aventuras pela Terra de Ooo, salvando as pessoas de perigos e seres do mal.", "finn.jpg"),
    Personagem("Jake", "Jake ele é um híbrido de cão/metamorfo, o maior companheiro do Finn, seu irmão adotivo. Jake é casado com a iriscórnia Lady Irís e tem 5 filhos.", "jake.jpg"),
    Personagem("Marceline", "Marceline Abadeer, a Rainha dos Vampiros, ela não precisa de sangue para viver, apenas se alimentando da cor vermelha.", "marceline.jpg"),
    Personagem("Princesa Jujuba", "Princesa Bonnibel Jujuba, é a encarnação atual do elemental de doce, além de ser a governante do Reino Doce.", "princesajujuba.jpg"),
    Personagem("Rei Gelado", "Simon Petrikov, originalmente retratado como um vilão que sequestra princesas regularmente.", "reigelado.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hora De Aventura"),
      ),
      body: ListView.builder(
          itemCount: personagens.length,
          itemBuilder: (BuildContext context, int index) {
            return CardPersonagens(
                nome: personagens[index].nome,
                descricao: personagens[index].descricao,
                imagem: personagens[index].imagem);
          }),
    );
  }
}