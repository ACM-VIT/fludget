import 'package:flutter/material.dart';

class GestureDetectorSample extends StatefulWidget {
  const GestureDetectorSample({Key? key}) : super(key: key);
  final List<MaterialColor> colors = const [
    Colors.pink,
    Colors.red,
    Colors.deepOrange,
    Colors.green,
    Colors.teal,
    Colors.cyan
  ];

  @override
  State<GestureDetectorSample> createState() => _GestureDetectorSampleState();
}

class _GestureDetectorSampleState extends State<GestureDetectorSample> {
  Offset _point = Offset(0, 0);
  double _size = 30;
  int _turns = 0;
  int _colorIndex = 0;
  int _colorShade = 100;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            Text(" > Tap to change position."),
            Text(" > Horizontal Drag to change size."),
            Text(" > Vertical Drag to change color."),
            Text(" > Double Tap to rotate."),
            SizedBox(height: 100),
            GestureDetector(
              onTapUp: (details) => setState(() {
                _point = details.localPosition;
              }),
              onHorizontalDragUpdate: (details) => setState(() {
                if (details.delta.dx < 0) _size -= 5;
                if (details.delta.dx > 0) _size += 5;
                if (_size < 30) _size = 30;
                if (_size > 200) _size = 50;
              }),
              onVerticalDragUpdate: (details) => setState(() {
                if (details.delta.dy > 0.5) {
                  _colorShade += 100;
                }
                if (details.delta.dy < -0.5) {
                  _colorShade -= 100;
                }
                if (_colorShade <= 0) {
                  _colorShade = 900;
                  _colorIndex -= 1;
                  if (_colorIndex == -1) _colorIndex = widget.colors.length - 1;
                }

                if (_colorShade > 900) {
                  _colorShade = 100;
                  _colorIndex += 1;
                  _colorIndex %= widget.colors.length;
                }
                print("$_colorShade || $_colorIndex");
              }),
              onDoubleTap: () => setState(() {
                _turns += 1;
              }),
              child: Stack(
                children: [
                  Container(
                    height: 400,
                    color: widget.colors[_colorIndex][_colorShade],
                  ),
                  Positioned(
                    child: RotatedBox(
                      quarterTurns: _turns,
                      child: FlutterLogo(
                        size: _size,
                      ),
                    ),
                    left: _point.dx,
                    top: _point.dy,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GestureDetectorDescription extends StatelessWidget {
  const GestureDetectorDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          'A widget that detects gestures. Attempts to recognize gestures that correspond to its non-null callbacks. If this widget has a child, it defers to that child for its sizing behavior. If it does not have a child, it grows to fit the parent instead',
        ),
      ),
    );
  }
}
