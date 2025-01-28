import 'package:flutter/material.dart';
import 'package:flutter_internals/keys/Todos.dart';

enum Priority { urgent, high, low }

final todoIcons = {
  Priority.urgent : Icons.notifications_active,
  Priority.high: Icons.low_priority,
  Priority.low:Icons.list
};

class Todo {
  const Todo(this.text, this.priority);
  final String text;
  final Priority priority;
}

class Keys extends StatefulWidget {
  const Keys({super.key});
  @override
  State<Keys> createState() {
    return _KeysState();
  }
}

class _KeysState extends State<Keys> {
  final List<Todo> _todoItame = [
    const Todo(
      "Leare flutter ",
      Priority.urgent,
    ),
    const Todo(
      "Prectice Flutter ",
      Priority.high,
    ),
    const Todo(
      "Explore other corcees ",
      Priority.low,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: Text(""))
              ],
            ),
            for (var todo in _todoItame)
              Todos(todoitem: todo),
          ],
        ),
      ),
    );
  }
}
