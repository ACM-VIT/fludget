import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class LayoutBuilderImp extends StatelessWidget {
  const LayoutBuilderImp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double mobileMaxWidth = 630;
    final double maxWidth = 800;
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          var width = constraints.maxWidth;
          return Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: maxWidth),
              width: width,
              child: Row(
                children: [
                  if (width <= mobileMaxWidth)
                    Container(
                      height: 40,
                      width: 40,
                      color: Theme.of(context).colorScheme.secondary,
                      margin: EdgeInsets.all(10),
                    ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 40,
                      color: Theme.of(context).primaryColor,
                      margin: EdgeInsets.all(10),
                    ),
                  ),
                  if (width <= mobileMaxWidth)
                    Container(
                      height: 40,
                      width: 40,
                      color: Theme.of(context).colorScheme.secondary,
                      margin: EdgeInsets.all(10),
                    ),
                  if (width >= mobileMaxWidth)
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 40,
                        color: Theme.of(context).primaryColor,
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                  if (width >= mobileMaxWidth)
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 40,
                        color: Theme.of(context).primaryColor,
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class LayoutBuilderDesc extends StatelessWidget {
  const LayoutBuilderDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: DefaultTextStyle(
          style: TextStyle(height: 1.5),
          child: Column(
            children: [
              Text("""
Builds a widget tree that can depend on the parent widget's size.

Similar to the Builder widget except that the framework calls the builder function at layout time and provides the parent widget's constraints. This is useful when the parent constrains the child's size and doesn't depend on the child's intrinsic size. The LayoutBuilder's final size will match its child's size.

The builder function is called in the following situations:

  -> The first time the widget is laid out.
  -> When the parent widget passes different layout constraints.
  -> When the parent widget updates this widget.
  -> When the dependencies that the builder function subscribes to change.
  -> The builder function is not called during layout if the parent passes the same constraints repeatedly.
              """),
            ],
          ),
        ),
      ),
    );
  }
}

class LayoutBuilderCode extends CodeString {
  const LayoutBuilderCode();
  @override
  String buildCodeString() {
    return """
    LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          var width = constraints.maxWidth;
          return Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: maxWidth),
              width: width,
              child: Row(
                children: [
                  if (width <= mobileMaxWidth)
                    Container(
                      height: 40,
                      width: 40,
                      color: Theme.of(context).colorScheme.secondary,
                      margin: EdgeInsets.all(10),
                    ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 40,
                      color: Theme.of(context).primaryColor,
                      margin: EdgeInsets.all(10),
                    ),
                  ),
                  if (width <= mobileMaxWidth)
                    Container(
                      height: 40,
                      width: 40,
                      color: Theme.of(context).colorScheme.secondary,
                      margin: EdgeInsets.all(10),
                    ),
                  if (width >= mobileMaxWidth)
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 40,
                        color: Theme.of(context).primaryColor,
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                  if (width >= mobileMaxWidth)
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 40,
                        color: Theme.of(context).primaryColor,
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    """;
  }
}
