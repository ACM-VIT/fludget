import 'package:fludget/Models/codeString.dart';
import "package:flutter/material.dart";

class AspectRatioImplementation extends StatelessWidget {
  const AspectRatioImplementation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      shrinkWrap: false,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            // alignment: Alignment.center,
            color: Theme.of(context).primaryColor,
            child: Text(
              "This box is of the aspect ratio of 16:9",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Divider(),
        AspectRatio(
          aspectRatio: 9 / 16,
          child: Container(
            //   alignment: Alignment.center,
            child: Text(
              "This box is of the aspect ratio of 9:16",
              textAlign: TextAlign.center,
            ),
            color: Theme.of(context).primaryColor,
          ),
        ),
        Divider(),
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            //alignment: Alignment.center,
            child: Text(
              "This box is of the aspect ratio of 1:1",
              textAlign: TextAlign.center,
            ),
            color: Theme.of(context).primaryColor,
          ),
        )
      ],
    ));
  }
}

class AspectRatioDescription extends StatelessWidget {
  const AspectRatioDescription();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          'AspectRatio Widget tries to find the best size to maintain aspect ration while respecting it’s layout constraints.',
        ),
      ),
    );
  }
}

class AspectRatioCode extends CodeString {
  const AspectRatioCode();
  String buildCodeString() {
    return """AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Theme.of(context).primaryColor,
            child: Text(
              "This box is of the aspect ratio of 16:9",
              textAlign: TextAlign.center,
            ),
          ),
        ),           
            """;
  }
}
