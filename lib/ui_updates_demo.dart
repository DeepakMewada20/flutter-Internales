import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_internals/demo_butten.dart';

class UiUpdatesDemo extends StatelessWidget {
  const UiUpdatesDemo({super.key});
  

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(15.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
             Text(
              "Every Flutter devloper should have a basic understenting of flutter internals!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
             SizedBox(
              height: 20,
            ),
             Text(
              "Do you Understed how flutter Update UI! ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
             SizedBox(
              height: 20,
            ),
            DemoButten(),
          ],
        ),
      ),
    );
  }
}
