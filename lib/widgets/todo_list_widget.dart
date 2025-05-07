import 'package:flutter/widgets.dart';
import 'package:flutter_todo/models/todo_dto.dart';
import 'package:flutter_todo/models/todo_status_enum.dart';
import 'package:flutter_todo/widgets/todo_item_widget.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO 더미 데이터
    final todos = [
      TodoDto(
        id: 1,
        title: '할일 1',
        content: '할일은 이거다',
        status: TodoStatus.pending,
      ),
      TodoDto(
        id: 2,
        title: '할일 2',
        content: '할일은 이거이거다',
        status: TodoStatus.inProgress,
      ),
      TodoDto(
        id: 3,
        title: '할일 3',
        content: '할일은 저거다',
        status: TodoStatus.completed,
      ),
    ];

    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return TodoItem(todo: todos[index], onTap: () {});
      },
    );
  }
}
