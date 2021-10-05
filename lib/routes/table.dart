import 'package:flutter/material.dart';

class TableSample extends StatelessWidget {
  const TableSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20, bottom: 16, left: 16, right: 16),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Table with no border :",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              MyTable(
                borderColor: Colors.transparent,
                borderWidth: 1.0,
                textAlignment: TextAlign.start,
                radius: BorderRadius.zero,
                flex: [1, 1, 1],
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Table with border width 2.0, text alignment center and circular border: ",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              MyTable(
                borderColor: Colors.deepOrange,
                borderWidth: 2.0,
                textAlignment: TextAlign.center,
                radius: BorderRadius.all(Radius.circular(8)),
                flex: [1, 1, 1],
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Table with different column widths: ",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              MyTable(
                borderColor: Colors.deepOrange,
                borderWidth: 2.0,
                textAlignment: TextAlign.center,
                radius: BorderRadius.all(Radius.circular(8)),
                flex: [1, 2, 3],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTable extends StatelessWidget {
  final double borderWidth;
  final Color borderColor;
  final TextAlign textAlignment;
  final BorderRadius radius;
  final List<double> flex;

  const MyTable(
      {Key? key,
      required this.borderWidth,
      required this.borderColor,
      required this.textAlignment,
      required this.radius,
      required this.flex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: <int, TableColumnWidth>{
        0: FlexColumnWidth(flex[0]),
        1: FlexColumnWidth(flex[1]),
        2: FlexColumnWidth(flex[2]),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(
        color: borderColor,
        width: borderWidth,
        // borderRadius: radius,
      ),
      children: [
        TableRow(children: [
          Text(
            "A",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          Text(
            "B",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          Text(
            "C",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ]),
        TableRow(children: [
          Text(
            "D",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          Text(
            "E",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          Text(
            "F",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ]),
        TableRow(children: [
          Text(
            "G",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          Text(
            "H",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          Text(
            "I",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ])
      ],
    );
  }
}

class TableDescription extends StatelessWidget {
  const TableDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'A Table Widget displays items in a table layout, the height of table row depends on the content inside them, although width can be set using columnWidth property.',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
