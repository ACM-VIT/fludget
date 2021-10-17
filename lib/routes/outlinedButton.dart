import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class OutlinedButtonImplimentation extends StatelessWidget {
  const OutlinedButtonImplimentation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: OutlinedButton(
          onPressed: () => _message(context),
          style: OutlinedButton.styleFrom(
            primary: Theme.of(context).primaryColor,
            side: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
          child: Text("Outlined Button")),
    ));
  }
}

void _message(BuildContext context) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("OutlinedButton was pressed"),
    ));

class OutlinedButtonDescription extends StatelessWidget {
  const OutlinedButtonDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text(
          'Outlined Button essentially a TextButton with an outlined border.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class OutlinedButtonCode extends CodeString {
  const OutlinedButtonCode();
  @override
  String buildCodeString() {
    return """  OutlinedButton(
                    onPressed: () => _message(context),
                    style: OutlinedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      side: BorderSide(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    child: Text("Outlined Button")),
""";
  }
}
