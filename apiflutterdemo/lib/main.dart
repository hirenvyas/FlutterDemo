import 'package:flutter/material.dart';
import 'package:apiflutterdemo/screens/HomePage.dart';
void main()=> runApp(MyApp());
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,       
       title:"My API",
       home: new Scaffold(
         appBar: AppBar(
           title: Text("My API"),
           backgroundColor: Colors.blueGrey,
            ),
            body: SafeArea(
              bottom: true,top: true,

              child: new Container(
                color: Colors.blueGrey,
                child: HomePage(),
              ),
            ),
       ),
     );
   }
 }
