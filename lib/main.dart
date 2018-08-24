import 'package:flutter/material.dart';
import 'package:helloraja/screens/LoginPage.dart';
import 'package:helloraja/screens/HomePage.dart';
import 'package:helloraja/data/ContactModel.dart';
import 'dart:async';
void main() => runApp(
  MaterialApp(
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/MyApp': (BuildContext context) => new MyApp()
    },
  )
);

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/MyApp');
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    child:Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Icon(Icons.call,color: Colors.white,size: 100.0,),



   ]
    ),
    )
    );
}
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(

              title: Text("My Contact App"),
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.details),
                ),
                Tab(
                  icon: Icon(Icons.contacts),
                )
              ]),
              backgroundColor: Colors.red,
            ),
            body: TabBarView( children: [
              HomePage(
                items: const <ContactModel>[
                  const ContactModel("Hiren Vyas", 8347603130, "H"),
                  const ContactModel("Maulik Parmar", 8347603130, "M"),
                  const ContactModel("Darshan Patel", 8347603130, "D"),
                  const ContactModel("Hiren Vyas", 8347603130, "H"),
                  const ContactModel("Maulik Parmar", 8347603130, "M"),
                  const ContactModel("Darshan Patel", 8347603130, "D"),
                  const ContactModel("Hiren Vyas", 8347603130, "H"),
                  const ContactModel("Maulik Parmar", 8347603130, "M"),
                  const ContactModel("Darshan Patel", 8347603130, "D"),
                  const ContactModel("Hiren Vyas", 8347603130, "H"),
                  const ContactModel("Maulik Parmar", 8347603130, "M"),
                  const ContactModel("Darshan Patel", 8347603130, "D"),
                  const ContactModel("Hiren Vyas", 8347603130, "H"),
                  const ContactModel("Maulik Parmar", 8347603130, "M"),
                  const ContactModel("Darshan Patel", 8347603130, "D"),
                ],
              ),
              LoginPage(),
              HomePage()
            ]),
          ),
        ));
  }
}
