import 'package:flutter/material.dart';
import 'package:helloraja/data/ContactModel.dart';
import 'package:helloraja/screens/DetailsPage.dart';

class HomePage extends StatelessWidget {
  final List<ContactModel> items;
  HomePage({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyhyKm0wRNMRkEVdmNh4ksHoLcP6XiuJpBJ6ta-BZQ2dbZCsUP")),
        ),
        child: ListView.builder(
          itemCount: items.length,
          padding: new EdgeInsets.all(2.0),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(child: MyCell(items[index]),
              onTap: () => Navigator.push(
              context,
            MaterialPageRoute(builder: (context) => DetailsPage(items[index])),
              ));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      AlertDialog(
                        content: MyPopUp(),
                      ),
                    ],
                  );
                });
          }),
    );
  }
}

class MyPopUp extends StatelessWidget {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueGrey[50],
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: myController1,
                      onChanged: (text) {},
                      decoration: InputDecoration(
                        hintText: "Contact Name",
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
                        hintText: "Contact Number",
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
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    title: Text("Login with"),
                                    actions: <Widget>[
                                      // usually buttons at the bottom of the dialog
                                      new FlatButton(
                                        child: new Text("Close"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ]);
                              });
                        },
                        child: Text("Save Contact"),
                      ),
                      minWidth: 380.0,
                      height: 45.0,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  )
                ])));
  }
}

class MyCell extends StatelessWidget {
  final ContactModel _contact;
  MyCell(this._contact);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          height: 60.0,
          width: 390.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text(
                      this._contact.myChar,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this._contact.name,
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                    Text(
                      this._contact.number.toString(),
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    )
                  ],
                ),
              ])),
    );
  }
}
