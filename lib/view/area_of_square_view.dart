import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AreaOfSquare extends StatefulWidget {
  const AreaOfSquare({super.key});

  @override
  State<AreaOfSquare> createState() => _AreaOfSquareState();
}

class _AreaOfSquareState extends State<AreaOfSquare> {
  double length = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                length = double.parse(value);
              },
              decoration: const InputDecoration(
                labelText: "Enter the length",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Calculate Area'),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Area of Circle is $result',
              style: const TextStyle(),
            )
          ],
        ),
      ),
    );
  }
}
