import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RichedTextView extends StatelessWidget {
  const RichedTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RichText(
        text: TextSpan(
            text: "My",
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(text: ' name is ', style: TextStyle())
            ]),
      ),
    );
  }
}

      // body: Container(
      //   color: Colors.indigo,
      //   width: double.infinity,
      //   child: const Text(
      //     'My Name is Sushant Shrestha ',
      //     style: TextStyle(
      //       fontSize: 25,
      //       fontWeight: FontWeight.bold,
      //       color: Color.fromARGB(255, 243, 20, 4),
      //     ),
      //   ),
      // ),
