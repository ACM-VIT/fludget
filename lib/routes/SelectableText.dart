import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class SelectableTextImplementation extends StatelessWidget {
  const SelectableTextImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Text(
          'This Text is Not Selectable',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        SelectableText(
          'This Text is Selectable',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Try selecting above text by long pressing'),
        ),
      ],
    );
  }
}

class SelectableTextDescription extends StatelessWidget {
  const SelectableTextDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 15, right: 15),
      child: Text(
        'The SelectableText widget displays a string of text with a single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class SelectableTextCode extends CodeString {
  const SelectableTextCode();
  @override
  String buildCodeString() {
    return """SelectableText('This Text is Selectable')
""";
  }
}
