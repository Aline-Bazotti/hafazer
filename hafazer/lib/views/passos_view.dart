import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sidebar_animation/components/passo_tile.dart';
import 'package:sidebar_animation/providers/passo_provider.dart';

class PassosView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PassoProvider passoProvider = Provider.of(context);
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          PassoTile(passoProvider.all.elementAt(index)).build(context),
      itemCount: passoProvider.count,
    );
  }
}
