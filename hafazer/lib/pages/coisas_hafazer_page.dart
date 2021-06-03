import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sidebar_animation/providers/passo_provider.dart';
import 'package:sidebar_animation/views/passos_view.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

class CoisasHafazerPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (ctx) => PassoProvider(1),
        child: MaterialApp(
          home: Scaffold(
            body: Column(children: [
              Center(
                  heightFactor: 2,
                  child: Text(
                    "Coisas Hafazer",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                  )),
              SizedBox(height: 400, child: PassosView())
            ]),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              child:
                  const Icon(Icons.add_rounded, color: Colors.black, size: 36),
              backgroundColor: Color(0xff38e95f),
            ),
          ),
        ));
  }
}
