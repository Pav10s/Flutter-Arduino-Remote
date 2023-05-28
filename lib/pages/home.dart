import 'package:flutter/material.dart';
import 'package:flutter_arduino_remote/widgets/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Remote"),
        centerTitle: true,
      ),
      body: Center(
        child: SliderWidget(
            min: 10,
            max: 300,
            initialValue: 10,
            onChanged: (double value) {
              print("Slider value: $value");
            }),
      ),
    );
  }
}
