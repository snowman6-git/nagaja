import 'package:flutter/material.dart';
import 'package:nagaja/components/bus_block.dart';
import 'package:nagaja/models/bus_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  var bus_info_exam = BusData(number: "200", pos: "어딘가 정류정");

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BusBlock(bus: bus_info_exam),
          // BusBlock(bus: bus_info_exam),
        ],
      ),
    );
  }
}
