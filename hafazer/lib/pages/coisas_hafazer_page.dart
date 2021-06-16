import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sidebar_animation/components/passo_floating_button.dart';
import 'package:sidebar_animation/models/passo.dart';
import 'package:sidebar_animation/providers/passo_provider.dart';
import 'package:sidebar_animation/views/passos_view.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

class CoisasHafazerPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PassoProvider(1),
        child: MaterialApp(
          home: Scaffold(
              resizeToAvoidBottomPadding: false,
              body: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  Center(
                      heightFactor: 2,
                      child: Text(
                        "Coisas Hafazer",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 28),
                      )),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.795,
                      child: PassosView())
                ]),
              ),
              floatingActionButton: PassoFloatingButton()),
        ));
  }
}
