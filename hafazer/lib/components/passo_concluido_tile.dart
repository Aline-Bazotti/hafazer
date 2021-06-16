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
    var txt = TextEditingController();
    txt.text = passo.descricao;
    final maxLines = 5;
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        //Caixa da Tarefa
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.023,
            ),
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.width * 0.2,
            child: TextField(
              enabled: false,
              maxLines: maxLines,
              controller: txt,
              decoration: InputDecoration(
                  fillColor: Color(0xffbbbde9),
                  filled: true,
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.02,
      )
    ]);
  }
}
