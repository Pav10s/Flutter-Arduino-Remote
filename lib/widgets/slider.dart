import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SliderWidget extends StatefulWidget {
  final double min;
  final double max;
  final double initialValue;
  final ValueChanged<double> onChanged;

  const SliderWidget({
    super.key,
    required this.min,
    required this.max,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _sliderValue = 0.0;

  @override
  void initState() {
    super.initState();
    _sliderValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    final appearance = CircularSliderAppearance(
      customColors: CustomSliderColors(
        dotColor: theme.secondary,
        trackColor: theme.secondary, // Custom color for the circular track
      progressBarColors: [
        theme.primary,
        theme.primary // Custom color for the progress bar // Custom color for the progress bar gradient
      ],
      ),
      customWidths: CustomSliderWidths(progressBarWidth: 10),
      startAngle: 180,
      angleRange: 270,
      size: 200,
      spinnerMode: false,
      infoProperties: InfoProperties(
        modifier: (value) => '${value.toInt()}',
        mainLabelStyle: TextStyle(
          color: theme.primary,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    return SleekCircularSlider(
      appearance: appearance,
      min: widget.min,
      max: widget.max,
      initialValue: _sliderValue,
      onChange: (double value) {
        setState(() {
          _sliderValue = value;
        });
        widget.onChanged(value);
      },
    );
  }
}
