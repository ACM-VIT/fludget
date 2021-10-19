import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OffStageImplementation extends StatefulWidget {
  const OffStageImplementation({Key? key}) : super(key: key);

  @override
  State<OffStageImplementation> createState() => _OffStageImplementationState();
}

class _OffStageImplementationState extends State<OffStageImplementation> {

  bool _imgOffstage = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Offstage(
          offstage: _imgOffstage,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Image.asset(
              "assets/images/logo.png",
              height: 200,
            ),
          ),
        ),
        Text('Image Widget is offstage: $_imgOffstage'),
        ElevatedButton(
          child: const Text('Toggle Widget'),
          onPressed: () {
            setState(() {
              _imgOffstage = !_imgOffstage;
            });
          },
        ),
      ],
    );
  }
}

class OffStageDescription extends StatelessWidget {
  const OffStageDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          textAlign: TextAlign.justify,
          text: new TextSpan(
            // Note: Styles for TextSpans must be explicitly defined.
            // Child text spans will inherit styles from parent
            style: Theme.of(context).textTheme.bodyText1,
            children: <TextSpan>[
              TextSpan(
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  text:
                  'Hide a widget from view.\n'
              ),
              TextSpan(
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  text:
                  ' \n'
              ),
              TextSpan(
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  text:
                  'Offstage is a widget that lays the child out as if it was in the tree, but without painting anything, without making the child available for hit testing, and without taking any room in the parent.\n'
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OffStageCode extends CodeString {
  const OffStageCode();

  @override
  String buildCodeString() {
    return """Offstage(
          offstage: _offstage,
          child: FlutterLogo(
            size: 150.0,
          ),
        ),""";
  }
}
