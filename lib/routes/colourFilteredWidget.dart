import 'dart:math';

import 'package:flutter/material.dart';

class ColourFilteredWidget extends StatefulWidget {
  const ColourFilteredWidget({Key? key}) : super(key: key);

  @override
  _ColourFilteredWidgetState createState() => _ColourFilteredWidgetState();
}

List myColors = <Color>[
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.indigo,
];
Color primaryColor = myColors[0];

class _ColourFilteredWidgetState extends State<ColourFilteredWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView(
        children: [
          Stack(
            children: [
              buildImageCard(BlendMode.hue),
              buildColorIcons("Mode:Hue"),
            ],
          ),
          Stack(
            children: [
              buildImageCard(BlendMode.colorBurn),
              buildColorIcons("Mode:ColorBurn"),
            ],
          ),
          Stack(
            children: [
              buildImageCard(BlendMode.softLight),
              buildColorIcons("Mode:SoftLight"),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildImageCard(BlendMode mode) => Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(primaryColor, mode),
          child: Container(
            color: Colors.grey[900],
            child: Transform.translate(
              offset: Offset(35, -25),
              child: Transform.rotate(
                angle: -pi / 0.55,
                child: Image.asset(
                  "assets/images/product.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
      );

  Widget buildColorIcons(String text) => Positioned(
        bottom: 35,
        right: 10,
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            Row(
              children: [for (var i = 0; i < 6; i++) buildIconBtn(myColors[i])],
            )
          ],
        ),
      );
  Widget buildIconBtn(Color myColor) => Container(
        child: Stack(
          children: [
            Positioned(
              top: 12.5,
              left: 12.5,
              child: Icon(
                Icons.check,
                size: 20,
                color: primaryColor == myColor ? myColor : Colors.transparent,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.circle,
                color: myColor.withOpacity(0.65),
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  primaryColor = myColor;
                });
              },
            ),
          ],
        ),
      );
}

class ColourFilteredWidgetDescription extends StatelessWidget {
  const ColourFilteredWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'ColourFiltered widget applies a function independently to each pixel to the content of child according to the ColorFilter specified. Use the ColorFilter.mode constructor to apply a Color using a BlendMode.',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
