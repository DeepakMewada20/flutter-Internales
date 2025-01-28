import 'package:flutter/material.dart';
import 'package:flutter_internals/keys/key.dart';

class Todos extends StatelessWidget {
  const Todos({required this.todoitem,super.key});
  final Todo todoitem;
  //final Priority todoriority;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          Icon(todoIcons[todoitem.priority]),
          const SizedBox(width: 20,),
          Text(todoitem.text),
        ],
      ),
    );
  }
}
