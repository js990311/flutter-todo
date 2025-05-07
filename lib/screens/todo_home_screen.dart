import 'package:flutter/material.dart';
import 'package:flutter_todo/widgets/todo_list_widget.dart';

class TodoHomeScreen extends StatelessWidget {
  const TodoHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo Homepage'), centerTitle: true),
      body: Container(child: TodoList()),
    );
  }
}
