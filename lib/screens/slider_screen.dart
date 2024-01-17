import 'package:flutter/material.dart';
import 'package:forms_fa/widgets/slider_input.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Input Screen"),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Adjust the Value",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              SliderInput(),
              SizedBox(height: 20),
              // Text(
              //   "Selected Value: ${SliderInput().sliderValue.toStringAsFixed(2)}",
              //   style: TextStyle(fontSize: 18),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
