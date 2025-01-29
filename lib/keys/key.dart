import 'package:flutter/material.dart';
import 'package:flutter_internals/keys/Todos.dart';
import 'package:flutter_internals/keys/checkebal_todo_item.dart';

enum Priority { urgent, high, low }

final todoIcons = {
  Priority.urgent: Icons.notifications_active,
  Priority.high: Icons.low_priority,
  Priority.low: Icons.list
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
  String _order = 'asc';
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

  void _setOrder() {
    setState(() {
      if (_order == 'asc') {
        _order = 'dsc';
        return;
      }
      _order = 'asc';
    });
  }

  List<Todo> _ordertodos() {
    List<Todo> shortList = _todoItame;
    shortList.sort((a, b) {
      final bComeAfterA = a.text.compareTo(b.text);
      return _order == 'asc' ? bComeAfterA : -bComeAfterA;
    });
    return shortList;
  }

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
                TextButton.icon(
                  onPressed: _setOrder,
                  icon: _order == 'asc'
                      ? const Icon(Icons.arrow_downward)
                      : const Icon(Icons.arrow_upward),
                  label: Text(
                      "Sort ${_order == 'asc' ? "Desending" : "Asending"}"),
                ),
              ],
            ),
            for (var todo in _ordertodos())
              CheckebalTodoItem(
                key: ValueKey(todo.text), //ObjectKey() it is manage object 
                todoitem: todo,
              ),
          ],
        ),
      ),
    );
  }
}
