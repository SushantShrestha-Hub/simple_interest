import 'package:flutter/material.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  double principle = 0;
  double time = 0;
  double rate = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Interest'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                principle = double.parse(value);
              },
              decoration: const InputDecoration(
                labelText: "Enter the principle",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                time = double.parse(value);
              },
              decoration: const InputDecoration(
                labelText: "Enter the time",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                rate = double.parse(value);
              },
              decoration: const InputDecoration(
                labelText: "Enter the rate",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = (principle * time * rate) / 100;
                  });
                },
                child: const Text('Calculate the simple interest'),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Simple Interest is: $result',
              style: const TextStyle(),
            )
          ],
        ),
      ),
    );
  }
}
