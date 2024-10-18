import 'package:flutter/material.dart';

class CardPersonagens extends StatelessWidget {
  const CardPersonagens(
      {super.key,
        required this.nome,
        required this.descricao,
        required this.imagem});
  final String nome;
  final String descricao;
  final String imagem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          final snackBar = SnackBar(content: Text(nome));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Card(
          elevation: 2,
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                    child: Image.asset("assets/images/$imagem")),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          nome,
                          style: const TextStyle(fontSize: 15),
                        ),
                        Text(descricao)
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
