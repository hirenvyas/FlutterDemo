import 'package:flutter/material.dart';
import 'package:apiflutterdemo/data/todo.dart';
import 'package:apiflutterdemo/services/GetTodos.dart';
import 'package:apiflutterdemo/widgets/todoCard.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<List<Todo>>(
        future: fetchTodo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) =>
              MyTodo(snapshot.data[index]),
              itemCount: snapshot.data.length,
            );
          }
          else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          // By default, show a loading spinner
          return Center(child: CircularProgressIndicator());
        },
      );
  }

}
