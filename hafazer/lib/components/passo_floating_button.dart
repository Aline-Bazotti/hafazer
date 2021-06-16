import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sidebar_animation/models/passo.dart';
import 'package:sidebar_animation/providers/passo_provider.dart';

class PassoFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PassoProvider passoProvider = Provider.of(context);
    return FloatingActionButton(
      onPressed: () {
        passoProvider.createPasso();
      },
      child: const Icon(Icons.add_rounded, color: Colors.black, size: 36),
      backgroundColor: Colors.greenAccent,
    );
  }
}
