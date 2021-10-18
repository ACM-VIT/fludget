import 'package:fludget/Models/codeString.dart';
import 'package:fludget/routes/sizedbox.dart';
import 'package:flutter/material.dart';

class PlaceHolderImplementation extends StatelessWidget {
  const PlaceHolderImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Placeholder(
                fallbackHeight: 100,
                fallbackWidth: double.infinity,
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Placeholder(
                    color: Theme.of(context).primaryColor,
                    strokeWidth: 3.0,
                  ),
                ),
                title: Text("Place Holder example"),
              ),
              const SizedBox(
                height: 20,
              ),
              Placeholder(
                fallbackHeight: 150,
                strokeWidth: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PlaceHolderDescription extends StatelessWidget {
  const PlaceHolderDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: DefaultTextStyle(
          style: TextStyle(height: 1.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "A widget that draws a box that represents where other widgets will one day be added.",
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "This widget is useful during development to indicate that the interface is not yet complete.",
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "By default, the placeholder is sized to fit its container. If the placeholder is in an unbounded space, it will size itself according to the given fallbackWidth and fallbackHeight.",
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Syntax or Class Definition:",
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 20,
              ),
              Text("""
const Placeholder(
{Key? key,
Color color,
double strokeWidth,
double fallbackWidth,
double fallbackHeight}
)
              """)
            ],
          ),
        ),
      ),
    );
  }
}

class PlaceHolderCode extends CodeString {
  const PlaceHolderCode();

  @override
  String buildCodeString() {
    // TODO: implement buildCodeString
    return """
    Placeholder(
              fallbackHeight: 100,
              fallbackWidth: double.infinity,
            ),
    """;
  }
}
