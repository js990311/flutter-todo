import 'package:flutter_todo/models/todo_status_enum.dart';

class TodoDto {
  final int id;
  final String title;
  final String content;
  final TodoStatus status;

  TodoDto({
    required this.id,
    required this.title,
    required this.content,
    required this.status,
  });
}
