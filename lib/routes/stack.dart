import 'package:flutter/material.dart';

class StackImplementation extends StatelessWidget {
  const StackImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Stack(
            children: [
              Container(
                color: Colors.red,
                child: FlutterLogo(
                  size: 400.0,
                ),
              ),
              Container(
                color: Colors.green,
                child: FlutterLogo(
                  size: 300.0,
                ),
              ),
              Container(
                color: Colors.blue,
                child: FlutterLogo(
                  size: 200.0,
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

class StackDescription extends StatelessWidget {
  const StackDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Stack Description Here',
      ),
    );
  }
}
