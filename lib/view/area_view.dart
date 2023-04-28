import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_interest/Model/area.dart';

class AreaView extends StatefulWidget {
  const AreaView({super.key});

  @override
  State<AreaView> createState() => _AreaViewState();
}

class _AreaViewState extends State<AreaView> {
  double radius = 0;
  double result = 0;
  late Area area;
  void circle() {
    area = Area();
    setState(() {
      result = area.circle(radius);
    });
  }

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
                radius = double.parse(value);
              },
              decoration: const InputDecoration(
                labelText: "Enter radius of circle",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    circle();
                  });
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
