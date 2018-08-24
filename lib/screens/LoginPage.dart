import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.blueGrey[50],
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Icon(
                      Icons.alarm,
                      size: 300.0,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: myController1,
                        onChanged: (text) {},
                        decoration: InputDecoration(
                          hintText: "Username",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: myController2,
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ButtonTheme(
                        child: RaisedButton(
                          color: Colors.red,
                          textColor: Colors.white,
                          onPressed: () {
                            showDialog(
                                context: context,
                                barrierDismissible: true,
                                builder:(BuildContext context)
                                {
                                  return AlertDialog(
                                      title:Text("Login with"),
                                      content: Text(myController1.text + myController2.text),
                                      actions: <Widget>[
                                        // usually buttons at the bottom of the dialog
                                        new FlatButton(
                                          child: new Text("Close"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ]
                                  );
                                }
                            );

                          },
                          child: Text("Log In"),
                        ),
                        minWidth: 380.0,
                        height: 45.0,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    )
                  ]))),
    );


  }
}