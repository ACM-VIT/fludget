import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class ClipRectImplementation extends StatelessWidget {
  const ClipRectImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          Image(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2020/09/26/14/27/sparrow-5604220_960_720.jpg"),
          ),
          SizedBox(height: 10),
          Text("Without Clip: Original Image"),
          SizedBox(height: 20),
          ClipRect(
              child: Align(
            alignment: Alignment.center,
            heightFactor: 0.6,
            widthFactor: 0.8,
            child: Image.network(
                "https://cdn.pixabay.com/photo/2020/09/26/14/27/sparrow-5604220_960_720.jpg"),
          )),
          SizedBox(height: 10),
          Text("ClipRect heightFactor: 0.6, widthFactor: 0.8"),
        ],
      ),
    ));
  }
}

class ClipRectDescription extends StatelessWidget {
  const ClipRectDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 20),
      Text('ClipRect Widget', style: TextStyle(fontWeight: FontWeight.w800)),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            'A widget that clips its child using a rectangle. By default, ClipRect prevents its child from painting outside its bounds, but the size and location of the clip rect can be customized using a custom clipper.',
          ),
        ),
      )
    ]);
  }
}

class ClipRectCode extends CodeString {
  const ClipRectCode();
  @override
  String buildCodeString() {
    return """ClipRect(
                  child: Align(
                alignment: Alignment.center,
                heightFactor: 0.6,
                widthFactor: 0.8,
                child: Image.network(
                    "https://cdn.pixabay.com/photo/2020/09/26/14/27/sparrow-5604220_960_720.jpg"),
              )),""";
  }
}
