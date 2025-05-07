import 'package:flutter/material.dart';
import 'package:flutter_todo/models/todo_status_enum.dart';

class TodoStatusWidget extends StatelessWidget {
  final TodoStatus status;
  const TodoStatusWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    Color statusColor;
    IconData statusIcon;

    switch (status) {
      case TodoStatus.pending:
        statusColor = Colors.grey;
        statusIcon = Icons.hourglass_empty;
        break;
      case TodoStatus.inProgress:
        statusColor = Colors.blue;
        statusIcon = Icons.sync;
        break;
      case TodoStatus.completed:
        statusColor = Colors.green;
        statusIcon = Icons.check;
        break;
      default:
        statusColor = Colors.black;
        statusIcon = Icons.help_outline;
    }
    return Container(
      decoration: BoxDecoration(
        color: statusColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(statusIcon, color: Colors.white, size: 14),
            Text(
              status.name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
