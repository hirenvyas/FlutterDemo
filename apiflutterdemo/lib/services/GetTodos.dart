import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:apiflutterdemo/data/todo.dart';
import 'package:http/http.dart' as http;

Future<List<Todo>> fetchTodo() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/todos');
  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<Todo>((json) => Todo.fromJson(json)).toList();
  } else {
    Dialog(
      child: Text("Error"),
    );
  }
}
