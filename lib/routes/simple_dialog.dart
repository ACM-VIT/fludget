import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';
import 'package:fludget/Models/codeString.dart';

class SimpleDialogImp extends StatelessWidget {
  const SimpleDialogImp({Key? key}) : super(key: key);
  SnackBar _showSnakBar(String title) {
    return SnackBar(
      content: Text("${title} option selected."),
      duration: Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              return await showDialog(
                context: context,
                builder: (BuildContext ctx) => SimpleDialog(
                  title: Text('Option List'),
                  children: [
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, "Dart");
                        ScaffoldMessenger.of(context)
                            .showSnackBar(_showSnakBar("Dart"));
                      },
                      child: const Text('Dart'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, "Flutter");
                        ScaffoldMessenger.of(context)
                            .showSnackBar(_showSnakBar("Flutter"));
                      },
                      child: const Text('Flutter'),
                    ),
                  ],
                  elevation: 10,
                ),
              );
            },
            child: Text("Show Simple Dialog"),
          ),
        ),
      ),
    );
  }
}
class SimpleDialogCode extends CodeString {
  const SimpleDialogCode();
  @override
  String buildCodeString() {
    return """showDialog(
                context: context,
                builder: (BuildContext ctx) => SimpleDialog(
                  title: Text('Option List'),
                  children: [
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, "Dart");
                      },
                      child: const Text('Dart'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, "Flutter");
                      },
                      child: const Text('Flutter'),
                    ),
                  ],
                  elevation: 10,
                ),
              );""";
  }
}


class SimpleDialogDesc extends StatelessWidget {
  const SimpleDialogDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyText1 ??
              const TextStyle(height: 1.5),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "A simple material design dialog.A simple dialog offers the user a choice between several options. A simple dialog has an optional title that is displayed above the choices.Choices are normally represented using SimpleDialogOption widgets.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SimpleDialogCode extends CodeString {
  const SimpleDialogCode();
  @override
  String buildCodeString() {
    return """
    showDialog(
                context: context,
                builder: (BuildContext ctx) => SimpleDialog(
                  title: Text('Option List'),
                  children: [
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, "Dart");
                      },
                      child: const Text('Dart'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, "Flutter");
                      },
                      child: const Text('Flutter'),
                    ),
                  ],
                  elevation: 10,
                ),
              );
    """;
  }
}
