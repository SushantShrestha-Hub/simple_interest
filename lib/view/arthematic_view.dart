import 'package:flutter/material.dart';
import 'package:simple_interest/Model/arthematic.dart';

class ArthematicView extends StatefulWidget {
  const ArthematicView({super.key});

  @override
  State<ArthematicView> createState() => _ArthematicViewState();
}

class _ArthematicViewState extends State<ArthematicView> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  int result = 0;

  @override
  void initState() {
    // TODO: implement initState
    firstController.text = '0';
    secondController.text = '0';
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    firstController;
    secondController;
    super.dispose();
  }

  late Arthematic arthematic;
  void add() {
    arthematic = Arthematic();
    setState(() {
      result = arthematic.add(
          int.parse(firstController.text), int.parse(secondController.text));
    });
  }

  void sub() {
    arthematic = Arthematic();
    setState(() {
      result = arthematic.sub(
          int.parse(firstController.text), int.parse(secondController.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              const SizedBox(height: 8),
              TextField(
                controller: firstController,
                decoration: const InputDecoration(
                  labelText: "Enter the first Num",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: secondController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter the second Num",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter first number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      add();
                    });
                  },
                  child: const Text('Add'),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sub();
                    });
                  },
                  child: const Text('Sub'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'sum is : $result',
                style: const TextStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
