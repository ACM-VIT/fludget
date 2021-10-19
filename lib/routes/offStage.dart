import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OffStageImplementation extends StatefulWidget {
  const OffStageImplementation({Key? key}) : super(key: key);

  @override
  State<OffStageImplementation> createState() => _OffStageImplementationState();
}

class _OffStageImplementationState extends State<OffStageImplementation> {
  final GlobalKey _key = GlobalKey();

  bool _offstage = true;

  Size _getFlutterLogoSize() {
    final RenderBox renderLogo =
    _key.currentContext!.findRenderObject()! as RenderBox;
    return renderLogo.size;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Offstage(
          offstage: _offstage,
          child: FlutterLogo(
            key: _key,
            size: 150.0,
          ),
        ),
        Text('Flutter logo is offstage: $_offstage'),
        ElevatedButton(
          child: const Text('Toggle Offstage Value'),
          onPressed: () {
            setState(() {
              _offstage = !_offstage;
            });
          },
        ),
        if (_offstage)
          ElevatedButton(
              child: const Text('Get Flutter Logo size'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content:
                    Text('Flutter Logo size is ${_getFlutterLogoSize()}'),
                  ),
                );
              }),
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
                  'A widget that lays the child out as if it was in the tree, but without painting anything, without making the child available for hit testing, and without taking any room in the parent.\n'
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
                  'Offstage can be used to measure the dimensions of a widget without bringing it on screen (yet).\n'
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
            key: _key,
            size: 150.0,
          ),
        ),""";
  }
}
