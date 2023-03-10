import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';

class RouteThreeScreen extends StatelessWidget {
  const RouteThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments;
    return MainLayout(
      title: "Three Screen",
      children: [
        Text(
          argument.toString(),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("pop"),
        ),
      ],
    );
  }
}
