import 'package:flutter/material.dart';

class GridListImplementation extends StatelessWidget {
  const GridListImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("GridList"),
      // ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: GridView(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2.3,
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
            ),
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
    );
  }
}

class GridListDescription extends StatelessWidget {
  const GridListDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'A scrollable, 2D array of widgets. The main axis direction of a grid is the direction in which it scrolls (the scrollDirection). The most commonly used grid layouts are GridView.count, which creates a layout with a fixed number of tiles in the cross axis, and GridView.extent, which creates a layout with tiles that have a maximum cross-axis extent. A custom SliverGridDelegate can produce an arbitrary 2D arrangement of children, including arrangements that are unaligned or overlapping.',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
