import 'dart:convert';

import 'package:todo_app/models/todo.dart';
import 'package:todo_app/services/todo_services.dart';

class TodoController {
  final TodoServices _todoServices = TodoServices();

  Future<Todo?> getAllTodos() async {
    Todo? _todo;
    await _todoServices.getAllTodoRequest().then((response) {
      int statusCode = response.statusCode;
      if (statusCode == 200) {
        //success
        _todo = Todo.fromMap(json.decode(response.body));
      } else {
        //error
        _todo = null;
      }
    }).catchError((error) {
      _todo = null;
    });
    return _todo;
  }
}
