import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sidebar_animation/components/passo_concluido_tile.dart';
import 'package:sidebar_animation/providers/passo_provider.dart';

class PassosConcluidosView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PassoProvider passoProvider = Provider.of(context);
    return Container(
        child: ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          PassoConcluidoTile(passoProvider.concluidos.elementAt(index))
              .build(context),
      itemCount: passoProvider.countConcluidos,
    ));
  }
}
