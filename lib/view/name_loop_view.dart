import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_interest/Model/name_loop.dart';

class NameLoopView extends StatefulWidget {
  const NameLoopView({super.key});

  @override
  State<NameLoopView> createState() => _NameLoopViewState();
}

class _NameLoopViewState extends State<NameLoopView> {
  int counter = 0;
  String name = "a";
  late NameLoop obj;

  void changeName() {
    obj = NameLoop();
    setState(() {
      name = obj.showName(counter++);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("And It goes on and on"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  NameLoop();
                });
              },
              child: const Text('ClickMe'),
            ),
          ),
        ));
  }
}
