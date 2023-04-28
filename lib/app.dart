import 'package:flutter/material.dart';
import 'package:simple_interest/view/area_view.dart';
import 'package:simple_interest/view/arthematic_view.dart';
import 'package:simple_interest/view/column_view.dart';
import 'package:simple_interest/view/dashboard_view.dart';
import 'package:simple_interest/view/name_loop_view.dart';
import 'package:simple_interest/view/riched_text_view.dart';
import 'package:simple_interest/view/simple_interest_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),
        '/arthematicRoute': (context) => const ArthematicView(),
        "/simpleInterestRoute": (context) => const SimpleInterestView(),
        "/areaRoute": (context) => const AreaView(),
        "/nameLoopRoute": (context) => const NameLoopView(),
        "/richedtextRoute": (context) => const RichedTextView(),
        "/columnRoute": (context) => const ColumnView(),
      },
    );
  }
}
