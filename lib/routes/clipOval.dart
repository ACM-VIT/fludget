import 'package:flutter/material.dart';

class ClipOvalSample extends StatelessWidget {
  const ClipOvalSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ClipOval(
                  child: Container(
                width: 100,
                height: 200,
                color: Colors.purple,
                child: Center(
                    child: Text("Clipped Container",
                        style: TextStyle(color: Colors.white, fontSize: 20))),
              )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ClipOval(
                  child: Container(
                color: Colors.teal,
                child: FlutterLogo(
                  size: 100,
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ClipOval(
                child: ElevatedButton(
                  child: Text("Clipped Button "),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                  child: Text("Same Clipped Button with Custom Clipper")),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ClipOval(
                clipper: MyClipper(),
                child: ElevatedButton(
                  child: Text("Clipped Button "),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ClipOvalDescription extends StatelessWidget {
  const ClipOvalDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Center(
        child: Text(
          'A widget that clips its child using an oval.By default, inscribes an axis-aligned oval into its layout dimensions and prevents its child from painting outside that oval, but the size and location of the clip oval can be customized using a custom clipper.',
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(
        size.width / 2 - (size.height / 2), 0, size.height, size.height);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}
