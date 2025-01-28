import 'package:flutter/material.dart';
class DemoButten extends StatefulWidget {
  const DemoButten({super.key});

  @override
  State<DemoButten> createState() {
    return _DemoButten();
  }
}

class _DemoButten extends State<DemoButten> {
  bool _ishaveNolage = false;
  void _isture(bool value) {
    setState(() {
      _ishaveNolage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                _isture(false);
              },
              child: const Text("No"),
            ),
            const SizedBox(
              width: 25,
            ),
            TextButton(
              onPressed: () {
                _isture(true);
              },
              child: const Text("Yes"),
            ),
          ],
        ),
        if (_ishaveNolage) const Text("Awesome!"),
      ],
    );
  }
}
