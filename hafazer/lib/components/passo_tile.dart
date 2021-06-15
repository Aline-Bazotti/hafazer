import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sidebar_animation/models/passo.dart';
import 'package:sidebar_animation/providers/passo_provider.dart';

class PassoTile extends StatelessWidget {
  final Passo passo;
  const PassoTile(this.passo);

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
            onChanged: (texto) {
              passo.descricao = texto;
              passoProvider.savePassoOnChange(passo);
            },
            decoration: InputDecoration(
              hintText: "Digite o que tem Hafazer",
              fillColor: Color(0xffbbbde9),
              filled: true,
            ),
          ),
        ),
        Column(children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Material(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
            ),
            color: Color(0xffbbbde9),
            child: InkWell(
              splashColor: Colors.green[900], // inkwell onPress colour
              child: SizedBox(
                width: 30,
                height: 25, //customisable size of 'button'
                child: Icon(
                  Icons.check_rounded,
                  color: Colors.green[700],
                  size: 20,
                ),
              ),
              onTap: () {
                passo.concluido = true;
                passoProvider.savePasso(passo);
              }, // or use onPressed: () {}
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Material(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
            ),
            color: Color(0xffbbbde9),
            child: InkWell(
              splashColor: Colors.red[900], // inkwell onPress colour
              child: SizedBox(
                width: 30,
                height: 25, //customisable size of 'button'
                child: Icon(
                  Icons.clear_rounded,
                  color: Colors.red[700],
                  size: 20,
                ),
              ),
              onTap: () {
                passoProvider.deletePasso(passo);
              }, // or use onPressed: () {}
            ),
          ),
        ])
      ],
    );
  }
}
