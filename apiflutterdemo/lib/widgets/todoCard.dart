import 'package:flutter/material.dart';
import 'package:apiflutterdemo/data/todo.dart';
class MyTodo extends StatefulWidget {

  final Todo myData;
  MyTodo(this.myData);
  @override
  _MyTodoState createState() => _MyTodoState();
}

class _MyTodoState extends State<MyTodo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      child: Container(
        color: Colors.blueGrey,
        child:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    child: Text(widget.myData.userId.toString()),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.myData.title,textAlign: TextAlign.start,),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }

}
