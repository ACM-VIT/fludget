import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class CustomPaintWidget extends StatefulWidget {
  const CustomPaintWidget({Key? key}) : super(key: key);
  @override
  _CustomPaintWidgetState createState() => _CustomPaintWidgetState();
}

class _CustomPaintWidgetState extends State<CustomPaintWidget> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
    super.initState(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildCanvas("Triangle using CustomPainter", TrianglePainter()),
          SizedBox(
            height: 15,
          ),
          buildCanvas("Rounded Rectangle using CustomPainter", RRectPainter()),
          SizedBox(
            height: 15,
          ),
          buildCanvas("Circle using CustomPainter", CirclePainter()),
          SizedBox(
            height: 15,
          ),
          buildClockCanvas("AnimatedClock using CustomPainter", ClockPainter()),
        ],
      ),
    );
  }

  Widget buildCanvas(String text, CustomPainter paintThis) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Container(
          height: 300,
          width: 300,
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          child: CustomPaint(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            painter: paintThis,
          ),
        ),
      );

  Widget buildClockCanvas(String text, CustomPainter paintThis) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Container(
          height: 300,
          width: 300,
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          child: Transform.rotate(
            angle: -pi / 2,
            child: CustomPaint(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Transform.rotate(
                  angle: pi / 2,
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
              painter: paintThis,
            ),
          ),
        ),
      );
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 10
      ..color = Colors.deepOrangeAccent
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(size.width * 1 / 2, size.height * 1 / 4);
    path.lineTo(size.width * 1 / 6, size.height * 3 / 4);
    path.lineTo(size.width * 5 / 6, size.height * 3 / 4);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class RRectPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 10
      ..color = Colors.deepOrangeAccent
      ..style = PaintingStyle.stroke;
    final a = Offset(size.width * 1 / 6, size.height * 1 / 4);
    final b = Offset(size.width * 5 / 6, size.height * 3 / 4);
    final rect = Rect.fromPoints(a, b);
    final radius = Radius.circular(30);

    canvas.drawRRect(RRect.fromRectAndRadius(rect, radius), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 10
      ..color = Colors.deepOrangeAccent
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width * 1 / 4, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class ClockPainter extends CustomPainter {
  var dateTime = DateTime.now();
  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);
    var radius = size.width * 1 / 4;

    var fillBrush = Paint()..color = Color(0xFF444964);

    var outlineBrush = Paint()
      ..strokeWidth = 16
      ..color = Colors.deepOrangeAccent
      ..style = PaintingStyle.stroke;
    var dashBrush = Paint()
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..color = Colors.deepOrangeAccent
      ..style = PaintingStyle.stroke;

    var centrefillBrush = Paint()..color = Color(0xFFEACEAFF);

    var secBrush = Paint()
      ..strokeWidth = 5
      ..color = Colors.orange.shade300
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    var minuteBrush = Paint()
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round
      ..shader = RadialGradient(colors: [Colors.lightBlue, Colors.pink])
          .createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke;

    var hourBrush = Paint()
      ..strokeWidth = 12
      ..strokeCap = StrokeCap.round
      ..shader = RadialGradient(colors: [Colors.blue, Colors.pink])
          .createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, radius, fillBrush);
    canvas.drawCircle(center, radius, outlineBrush);

    var hourX = centerX + 60 * cos((dateTime.hour * 60 + dateTime.minute ) * pi / 360);
    var hourY = centerY + 60 * sin((dateTime.hour * 60 + dateTime.minute ) * pi / 360);
    canvas.drawLine(center, Offset(hourX, hourY), hourBrush);

    var minuteX = centerX + 80 * cos(dateTime.minute * 12 * pi / 360);
    var minuteY = centerY + 80 * sin(dateTime.minute * 12 * pi / 360);
    canvas.drawLine(center, Offset(minuteX, minuteY), minuteBrush);

    var secondX = centerX + 80 * cos(dateTime.second * 12 * pi / 360);
    var secondY = centerY + 80 * sin(dateTime.second * 12 * pi / 360);
    canvas.drawLine(center, Offset(secondX, secondY), secBrush);

    canvas.drawCircle(center, 12, centrefillBrush);
    var outerCircleRadius = radius+24;
    var innerCircleRadius = radius+16;
    for (double i = 0; i < 360; i += 30) {
      var x1 = centerX + outerCircleRadius * cos(i * pi / 180);
      var y1 = centerX + outerCircleRadius * sin(i * pi / 180)-40;

      var x2 = centerX + innerCircleRadius * cos(i * pi / 180);
      var y2 = centerX + innerCircleRadius * sin(i * pi / 180)-40;
      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class CustomPaintDescription extends StatelessWidget {
  const CustomPaintDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'CustomPaint is a widget that provides a canvas on which to draw during the paint phase.When asked to paint, CustomPaint first asks its painter to paint on the current canvas, then it paints its child, and then, after painting its child, it asks its foregroundPainter to paint.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
