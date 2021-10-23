import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class LimitedBoxImplementation extends StatelessWidget {
  const LimitedBoxImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(
          10,
          (index) => LimitedBox(
            maxHeight: 200,
            child: Container(
              color: randomColor(),
            ),
          ),
        ),
      ),
    );
  }
}

Color randomColor() {
  return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
      .withOpacity(1.0);
}

class LimitedBoxDescription extends StatelessWidget {
  const LimitedBoxDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: DefaultTextStyle(
            style: const TextStyle(height: 1.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "A box that limits its size only when it's unconstrained.",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "If this widget's maximum width is unconstrained then its child's width is limited to maxWidth. Similarly, if this widget's maximum height is unconstrained then its child's height is limited to maxHeight.",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "This has the effect of giving the child a natural dimension in unbounded environments. For example, by providing a maxHeight to a widget that normally tries to be as big as possible, the widget will normally size itself to fit its parent, but when placed in a vertical list, it will take on the given height.",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "This is useful when composing widgets that normally try to match their parents' size, so that they behave reasonably in lists (which are unbounded).",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Syntax or class Definition",
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("""
const LimitedBox(
{Key? key,
double maxWidth,
double maxHeight,
Widget? child}
)
                """),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LimitedBoxCode extends CodeString {
  const LimitedBoxCode();

  @override
  String buildCodeString() {
    return """
    return Scaffold(
      body: ListView(
        children: List.generate(
          10,
          (index) => LimitedBox(
            maxHeight: 200,
            child: Container(
              color: randomColor(),
            ),
          ),
        ),
      ),
    );
    """;
  }
}
