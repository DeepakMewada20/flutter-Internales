import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_internals/keys/key.dart';

class CheckebalTodoItem extends StatefulWidget {
  const CheckebalTodoItem({required this.todoitem, super.key});
  final Todo todoitem;
  @override
  State<StatefulWidget> createState() {
    return _CheckebalTodoItemState();
  }
}

class _CheckebalTodoItemState extends State<CheckebalTodoItem> {
  bool _done = false;
  void _setdone(bool? ischeckes) {
    setState(() {
      _done = ischeckes ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(5),
      child: Row(
        children: [
          Checkbox(
            value: _done,
            onChanged: _setdone,
          ),
          const SizedBox(width: 20,),
          Icon(todoIcons[widget.todoitem.priority]),
          const SizedBox(width: 20,),
          Text(widget.todoitem.text),
        ],
      ),
    );
  }
}
