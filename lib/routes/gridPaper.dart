import 'package:flutter/material.dart';
import 'package:fludget/Models/codeString.dart';

class GridPaperImplementation extends StatelessWidget {
  const GridPaperImplementation();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Grid Paper ")),
        body: GridPaper(
          child: Container(
            width: 300,
            height: 500,
          ),
          color: Colors.deepOrangeAccent,
          interval: 500,
          divisions: 50,
          subdivisions: 10,
        ),
      ),
    );
  }
}

class GridPaperDescription extends StatelessWidget {
  const GridPaperDescription();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          'A widget that draws a rectilinear grid of lines one pixel wide',
        ),
      ),
    );
  }
}

class GridPaperCode extends CodeString {
  const GridPaperCode();
  String buildCodeString() {
    return """GridPaper(
          child: Container(
            width: 300,
            height: 500,
          ),
          color: Colors.deepOrangeAccent,
          interval: 500,
          divisions: 50,
          subdivisions: 10,
        )""";
  }
}
