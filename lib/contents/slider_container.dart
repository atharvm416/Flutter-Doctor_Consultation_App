import 'package:flutter/material.dart';

class SliderContainer extends StatefulWidget {
  const SliderContainer({ Key? key }) : super(key: key);

  @override
  State<SliderContainer> createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  double _currentSliderValue = 6;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      max: 6,
      divisions: 6,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
      /* activeColor: Color.fromARGB(247, 157, 25, 214), */
    );
  }
}