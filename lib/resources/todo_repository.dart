import 'package:todo/models/todo_model.dart';

class TodoRepository {}

abstract class TodoSource {
  Future<List<TodoModel>> getTodos();
  Future<bool> updateTodo(int id);
  Future<bool> deleteTodo(int id);
}

abstract class TodoCache {}
