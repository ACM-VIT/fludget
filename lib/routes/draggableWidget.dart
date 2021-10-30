import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class DraggableSample extends StatefulWidget {
  const DraggableSample({Key? key}) : super(key: key);

  static const List<Color> _pallette = [
    Colors.white,
    Colors.amber,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.red,
    Colors.pink,
    Colors.purple,
  ];

  @override
  State<DraggableSample> createState() => _DraggableSampleState();
}

class _DraggableSampleState extends State<DraggableSample> {
  Color _currentColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: ListView.builder(
              itemBuilder: (context, value) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Draggable<Color>(
                    child: Container(
                        width: 50,
                        height: 50,
                        color: DraggableSample._pallette[value]),
                    feedback: Container(
                        width: 100,
                        height: 100,
                        color: DraggableSample._pallette[value]),
                    childWhenDragging:
                        Container(width: 50, height: 50, color: Colors.grey),
                    data: DraggableSample._pallette[value],
                  ),
                );
              },
              itemCount: DraggableSample._pallette.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15),
          child: DragTarget<Color>(
            builder: (context, candidateData, rejectedData) => Container(
              color: _currentColor,
              child: Center(
                child: Text(
                  "Drop Colors Here!!!",
                ),
              ),
            ),
            onAccept: (data) => setState(() {
              _currentColor = data;
            }),
          ),
        ))
      ],
    ));
  }
}

class DraggableDescription extends StatelessWidget {
  const DraggableDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'A widget that can be dragged from to a DragTarget.',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            "When a draggable widget recognizes the start of a drag gesture, it displays a feedback widget that tracks the user's finger across the screen. If the user lifts their finger while on top of a DragTarget, that target is given the opportunity to accept the data carried by the draggable.",
            style: TextStyle(fontSize: 15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'This widget displays child when zero drags are under way. If childWhenDragging is non-null, this widget instead displays childWhenDragging when one or more drags are underway. Otherwise, this widget always displays child.',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}

class DraggableWidgetCode extends CodeString {
  const DraggableWidgetCode();
  @override
  String buildCodeString() {
    return """Padding(
                padding: const EdgeInsets.all(15),
                child: ListView.builder(
                  itemBuilder: (context, value) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Draggable<Color>(
                        child: Container(
                            width: 50,
                            height: 50,
                            color: DraggableSample._pallette[value]),
                        feedback: Container(
                            width: 100,
                            height: 100,
                            color: DraggableSample._pallette[value]),
                        childWhenDragging: Container(
                            width: 50, height: 50, color: Colors.grey),
                        data: DraggableSample._pallette[value],
                      ),
                    );
                  },
                  itemCount: DraggableSample._pallette.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(15),
              child: DragTarget<Color>(
                builder: (context, candidateData, rejectedData) => Container(
                  color: _currentColor,
                  child: Center(
                    child: Text(
                      "Drop Colors Here!!!",
                    ),
                  ),
                ),
                onAccept: (data) => setState(() {
                  _currentColor = data;
                }),
              ),
            ))""";
  }
}
