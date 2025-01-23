import 'package:flutter/widgets.dart';

class UiUpdatesDemo extends StatefulWidget {
  const UiUpdatesDemo({super.key});
  @override
  State<StatefulWidget> createState() {
    return _UiUpdatesDemo();
  }
}

class _UiUpdatesDemo extends State<UiUpdatesDemo> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("my Data"),
        ],
      ),
    );
  }
}
