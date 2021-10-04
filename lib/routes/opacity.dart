import 'package:flutter/material.dart';

class opacitysample extends StatefulWidget {
  const opacitysample({Key? key}) : super(key: key);

  @override
  _opacitysampleState createState() => _opacitysampleState();
}

class _opacitysampleState extends State<opacitysample> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 1,
                child: Container(
                  child: Text(""),
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
              ),
              Text("1 opacity")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0.75,
                child: Container(
                  child: Text(""),
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
              ),
              Text("0.75 opacity")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0.5,
                child: Container(
                  child: Text(""),
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
              ),
              Text("0.5 opacity")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0.25,
                child: Container(
                  child: Text(""),
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
              ),
              Text("0.25 opacity")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0,
                child: Container(
                  child: Text(""),
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
              ),
              Text("0 opacity")
            ],
          ),
        ),
      ],
    );
  }
}

class opacitydescription extends StatefulWidget {
  const opacitydescription({Key? key}) : super(key: key);

  @override
  _opacitydescriptionState createState() => _opacitydescriptionState();
}

class _opacitydescriptionState extends State<opacitydescription> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("This is a Opacity widget",
            style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
