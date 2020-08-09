import 'package:flutter/foundation.dart';

class TodoModel {
  final String title;
  final int id;
  final List<TodoItemModel> todos;

  const TodoModel({
    @required this.title,
    @required this.id,
    @required this.todos,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'id': id,
      'todos': todos
          .map(
            (e) => e.toMap(),
          )
          .toList()
    };
  }
}

class TodoItemModel {
  final String title;
  final bool isCompleted;

  const TodoItemModel({
    @required this.isCompleted,
    @required this.title,
  });

  Map<String, dynamic> toMap() {
    return {
      "title": title,
      "isCompleted": isCompleted,
    };
  }
}
