import 'package:flutter/material.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

class CoisasHafazerPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    final maxLines = 5;
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
                    Container(
                      padding: EdgeInsets.all(0),
                      width: 300,
                      height: 70,
                      child: 
                      TextField(
                        maxLines: maxLines,
                        decoration: InputDecoration(
                          hintText: "Digite o que tem Hafazer",
                          fillColor: Color(0xffbbbde9),
                          filled: true,
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 5,),
                        Material( 
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),),
                          color: Color(0xffbbbde9),
                          child: InkWell(
                            splashColor: Colors.green[900], // inkwell onPress colour
                            child: SizedBox(
                              width: 30, height: 25, //customisable size of 'button'
                              child: Icon(Icons.check_rounded,color: Colors.green[700],size: 20,),),
                            onTap: () {}, // or use onPressed: () {}
                          ),
                        ),
                        SizedBox(height: 10,),
                        Material( 
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),),
                          color: Color(0xffbbbde9),
                          child: InkWell(
                            splashColor: Colors.red[900], // inkwell onPress colour
                            child: SizedBox(
                              width: 30, height: 25, //customisable size of 'button'
                              child: Icon(Icons.clear_rounded,color: Colors.red[700],size: 20,),),
                            onTap: () {}, // or use onPressed: () {}
                           ),
                        ),
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


