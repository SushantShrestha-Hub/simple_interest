import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 120,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
