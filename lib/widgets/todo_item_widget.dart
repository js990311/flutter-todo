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
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            Row(
              // 제목부
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(flex: 1, child: Text(todo.status.name)),
                Expanded(
                  child: Text(
                    todo.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit, size: 10),
                  ),
                ),
              ],
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 4),
              child: Text(todo.content),
            ),
            // 본문부
          ],
        ),
      ),
    );
  }
}
