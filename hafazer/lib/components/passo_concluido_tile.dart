import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sidebar_animation/models/passo.dart';
import 'package:sidebar_animation/providers/passo_provider.dart';

class PassoConcluidoTile extends StatelessWidget {
  final Passo passo;

  const PassoConcluidoTile(this.passo);

  @override
  Widget build(BuildContext context) {
    final PassoProvider passoProvider = Provider.of(context);
    var txt = TextEditingController();
    txt.text = passo.descricao;
    final maxLines = 5;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      //Caixa da Tarefa
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          width: 300,
          height: 70,
          child: TextField(
            maxLines: maxLines,
            controller: txt,
            decoration: InputDecoration(
              fillColor: Color(0xffbbbde9),
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
