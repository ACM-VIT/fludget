import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class FractionallySizedBoxImp extends StatelessWidget {
  const FractionallySizedBoxImp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Allows us to size our widgets with maximum size ratio available",
              style: TextStyle(height: 1.5),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: FractionallySizedBox(
                alignment: Alignment.center,
                heightFactor: 0.8,
                widthFactor: 0.8,
                child: Container(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FractioanllySizedBoxDesc extends StatelessWidget {
  const FractioanllySizedBoxDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: DefaultTextStyle(
          style: TextStyle(height: 1.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "A widget that sizes its child to a fraction of the total available space.",
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Syntax or class Definition",
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                """
const FractionallySizedBox(
{Key? key,
AlignmentGeometry alignment,
double? widthFactor,
double? heightFactor,
Widget? child}
)
              """,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FractioanallySizedBoxCode extends CodeString {
  const FractioanallySizedBoxCode();
  @override
  String buildCodeString() {
    return """
    FractionallySizedBox(
                alignment: Alignment.center,
                heightFactor: 0.8,
                widthFactor: 0.8,
                child: Container(
                  color: Theme.of(context).primaryColor,
                ),
              ),
    """;
  }
}
