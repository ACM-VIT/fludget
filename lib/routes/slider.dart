import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderSample extends StatefulWidget {
  const SliderSample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SliderSampleState();
}

class _SliderSampleState extends State<SliderSample> {
  static const double SLIDER_MAX = 100;
  static const double SLIDER_MIN = 0;
  static const int SLIDER_DIVISIONS = 10;
  static const double SLIDER_DEFAULT = 20;

  double _sliderValue = SLIDER_DEFAULT;
  double _sliderWithDivisionsValue = SLIDER_DEFAULT;
  double _cupertinoSliderValue = SLIDER_DEFAULT;
  double _cupertinoSliderWithDivisionsValue = SLIDER_DEFAULT;

  double _rangeSliderStart = 40;
  double _rangeSliderEnd = 60;
  double _rangeSliderWithDivisionsStart = 40;
  double _rangeSliderWithDivisionsEnd = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: ListView(
            children: [
              Text(
                "Slider:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Slider(
                value: _sliderValue,
                min: SLIDER_MIN,
                max: SLIDER_MAX,
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
              Text(
                "Slider with divisions:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Slider(
                value: _sliderWithDivisionsValue,
                min: SLIDER_MIN,
                max: SLIDER_MAX,
                divisions: SLIDER_DIVISIONS,
                label: _sliderWithDivisionsValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _sliderWithDivisionsValue = value;
                  });
                },
              ),
              Text(
                "Cupertino Slider:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              CupertinoSlider(
                value: _cupertinoSliderValue, 
                min: SLIDER_MIN,
                max: SLIDER_MAX,
                onChanged:  (double value) {
                  setState(() {
                    _cupertinoSliderValue = value;
                  });
                },
              ),
              Text(
                "Cupertino Slider with divisions:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              CupertinoSlider(
                value: _cupertinoSliderWithDivisionsValue, 
                min: SLIDER_MIN,
                max: SLIDER_MAX,
                divisions: SLIDER_DIVISIONS,
                onChanged:  (double value) {
                  setState(() {
                    _cupertinoSliderWithDivisionsValue = value;
                  });
                },
              ),
              Text(
                "Range Slider:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              RangeSlider(
                values: RangeValues(_rangeSliderStart, _rangeSliderEnd),
                min: 0,
                max: 100,
                onChanged: (RangeValues value) {
                  setState(() {
                    _rangeSliderStart = value.start;
                    _rangeSliderEnd = value.end;
                  });
                },
              ),
              Text(
                "Range Slider with divisions:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              RangeSlider(
                values: RangeValues(_rangeSliderWithDivisionsStart, _rangeSliderWithDivisionsEnd),
                min: 0,
                max: 100,
                divisions: 10,
                labels: RangeLabels("min", "max"),
                onChanged: (RangeValues value) {
                  setState(() {
                    _rangeSliderWithDivisionsStart = value.start;
                    _rangeSliderWithDivisionsEnd = value.end;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SliderDescription extends StatelessWidget {
  const SliderDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Slider Widget \n',
              style: TextStyle(
                fontSize: 26.0,
              ),
            ),
            RichText(
              text: new TextSpan(
                style: Theme.of(context).textTheme.bodyText1,
                children: <TextSpan>[
                  TextSpan(
                    text: 'A slider is a stateful widget used to select a value from a range of possible values by dragging the "thumb" of the slider across the "track" of the slider. '
                    'The default behavior of a slider is to provide a continuous range of values from a minimum to a maximum, but can be limited to values '
                    'in certain increments by specifying the division value. Including the division value also applies a label to the slider. '
                    'The RangeSlider is a special slider widget with a range value consisting of a minimum '
                    'and maximum. This slider also supports incremental values by specifying a division value. There is also a label option to label both the '
                    'minimum and maximum thumbs with a constant value.'
                  ),
                  TextSpan(
                      text: '\n\nExample \n\n',
                      style: TextStyle(
                        fontSize: 22.0,
                      )),
                  TextSpan(
                      text: 'Slider(\n'
                          '     value: _statefulSliderValue,\n'
                          '     min: 0,\n'
                          '     max: 100,\n'
                          '     divisions: 10,\n'
                          '     label: _sliderWithDivisionsValue.round().toString(),\n'
                          '     onChanged: (double value) {\n'
                          '       setState(() {\n'
                          '         _sliderWithDivisionsValue = value;\n'
                          '       });\n'
                          '     },\n'
                          '  ),\n\n'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
