import 'package:flutter/material.dart';
import 'package:helloraja/data/ContactModel.dart';

class DetailsPage extends StatefulWidget {
  final ContactModel myModel;
  DetailsPage(this.myModel);
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.myModel.name),
        backgroundColor: Colors.red,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

           Container(
             height: 180.0,
             decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyhyKm0wRNMRkEVdmNh4ksHoLcP6XiuJpBJ6ta-BZQ2dbZCsUP")),
              ),

                child: Center(
                  child: CircleAvatar(
                    maxRadius: 60.0,
                    child: Text(
                      widget.myModel.myChar,
                      style: TextStyle(fontSize: 50.0),
                    ),
                  ),
                ),

            ),

          Expanded(
            child: ListView.builder(itemBuilder: (BuildContext context,int index){
              return MyDetailCell(widget.myModel);}
      ),
    )]
      )
      );
  }
}
class MyDetailCell extends StatefulWidget {
  final ContactModel myModel;
  MyDetailCell(this.myModel);

  @override
  _MyDetailCellState createState() => _MyDetailCellState();
}

class _MyDetailCellState extends State<MyDetailCell> {
  @override
  Widget build(BuildContext context) {
    return Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(widget.myModel.name),
    ),
    );
  }
}
