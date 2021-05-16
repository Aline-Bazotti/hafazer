import 'package:flutter/material.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

class CoisasHafazerPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return
    MaterialApp(
       home: Scaffold(
         body: Column(
           children: [
             Center(
               heightFactor: 2,
               child: Text(
                          "Coisas Hafazer",
                          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                      ) 
             ),
             SizedBox(height: 50),
             Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Row(
                   
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  //Caixa da Tarefa
                  children: <Widget>[
                    const SizedBox(
                      width: 300,
                      height: 70,
                      child: const DecoratedBox(
                        decoration: const BoxDecoration(
                          color: Color(0xffbbbde9)
                        ),

                      ),
                    ),
                    Column(
                      children: <Widget>[
                        RaisedButton(
                          child: new Icon(Icons.check_rounded),
                          color: Color(0xffbbbde9),
                          shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                          onPressed: (){},
                        ),
                        RaisedButton(
                          child: new Icon(Icons.clear_rounded),
                          color: Color(0xffbbbde9),
                          shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                          onPressed: (){},
                        )
                      ]
                      
                    )
                    
                  ],
                )
               ],
             )
           ]
         ),
         floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(
            Icons.add_rounded,
            color: Colors.black,
            size: 36
              
            ),
          backgroundColor: Color(0xff38e95f),
        ),
       ),
   );
  }
  
}


