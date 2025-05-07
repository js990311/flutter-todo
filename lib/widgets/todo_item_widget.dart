import 'package:flutter/material.dart';
import 'package:flutter_todo/models/todo_dto.dart';

class TodoItem extends StatelessWidget {
  final TodoDto todo;
  final VoidCallback? onTap;

  const TodoItem({super.key, required this.todo, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      elevation: 1, // 그림자 높이
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Row(
            // 제목부
            children: [
              Text(todo.title),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit, size: 10),
              ),
            ],
          ),
          // 본문부
          Text(todo.content),
        ],
      ),
    );
  }
}
