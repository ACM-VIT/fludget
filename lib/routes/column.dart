import 'package:flutter/material.dart';

class ColumnImplementation extends StatefulWidget {
  const ColumnImplementation({Key? key}) : super(key: key);

  @override
  State<ColumnImplementation> createState() => _ColumnImplementationState();
}

class _ColumnImplementationState extends State<ColumnImplementation> {
  MainAxisAlignment? _mainAxisAlignment = MainAxisAlignment.spaceBetween;
  CrossAxisAlignment? _crossAxisAlignment = CrossAxisAlignment.center;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Column"),
      // ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Column(
                children: [
                  Expanded(
                    child: DropdownButton<MainAxisAlignment>(
                      items: MainAxisAlignment.values
                          .map((e) => DropdownMenuItem(
                                child: Text(
                                  e.toString(),
                                ),
                                value: e,
                              ))
                          .toList(),
                      isExpanded: true,
                      onChanged: (v) {
                        setState(() {
                          _mainAxisAlignment = v;
                        });
                      },
                      hint: Text(
                        _mainAxisAlignment.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: DropdownButton<CrossAxisAlignment>(
                      items: CrossAxisAlignment.values
                          .map((e) => DropdownMenuItem(
                                child: Text(
                                  e.toString(),
                                ),
                                value: e,
                              ))
                          .toList(),
                      isExpanded: true,
                      onChanged: (v) {
                        setState(() {
                          _crossAxisAlignment = v;
                        });
                      },
                      hint: Text(
                        _crossAxisAlignment.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: _mainAxisAlignment!,
                  crossAxisAlignment: _crossAxisAlignment!,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Container(
                      color: Colors.red,
                      child: FlutterLogo(
                        size: 100.0,
                      ),
                    ),
                    Container(
                      color: Colors.green,
                      child: FlutterLogo(
                        size: 100.0,
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      child: FlutterLogo(
                        size: 100.0,
                      ),
                    ),
                    Container(
                      color: Colors.yellow,
                      child: FlutterLogo(
                        size: 100.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColumnDescription extends StatelessWidget {
  const ColumnDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Column Description Here',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
