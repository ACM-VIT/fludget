import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class SelectableTextImplementation extends StatelessWidget {
  const SelectableTextImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Text(
            'This Text is Not Selectable',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Tap on Below Text'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SelectableText(
              'This Text has cursor color as purple.',
              style: TextStyle(
                fontSize: 24,
              ),
              cursorColor: Colors.purple,
              cursorWidth: 3,
              showCursor: true,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SelectableText(
              'This Text has cursor color as blue.',
              style: TextStyle(
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
              cursorColor: Colors.blue,
              cursorWidth: 5,
              showCursor: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SelectableText(
              'This Text has cursor color as red.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
              cursorColor: Colors.red,
              cursorWidth: 8,
              showCursor: true,
            ),
          ),
        ],
      ),
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
    return """SelectableText(
              'This Text has cursor color as purple.',
              style: TextStyle(
                fontSize: 24,
              ),
              cursorColor: Colors.purple,
              cursorWidth: 3,
              showCursor: true,
              textAlign: TextAlign.center,
            ),
""";
  }
}
