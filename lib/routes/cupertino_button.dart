import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CupertinoButtonSample extends StatefulWidget {
  const CupertinoButtonSample({Key? key}) : super(key: key);

  @override
  _CupertinoButtonSampleState createState() => _CupertinoButtonSampleState();
}

void showSnackBarMessage(
  var context,
  var message,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Theme.of(context).backgroundColor,
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          color: Theme.of(context).primaryColor,
        ),
      ),
      duration: Duration(seconds: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
    ),
  );
}

_launchURL(String url) async {
  // const url = 'https://github.com/Shah-Aayush';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _CupertinoButtonSampleState extends State<CupertinoButtonSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: CupertinoButton(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).dialogBackgroundColor,
                ),
                child: Text(
                  'Tap me',
                  style: TextStyle(
                      // color: Theme.of(context).primaryColorLight,
                      ),
                ),
              ),
              onPressed: () {
                showSnackBarMessage(context, 'Cupertino Button Pressed');
              }),
        ),
      ),
    );
  }
}

class CupertinoButtonDescription extends StatelessWidget {
  const CupertinoButtonDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            """An iOS-style button.
      
      Takes in a text or an icon that fades out and in on touch. May optionally have a background.
      
      The padding defaults to 16.0 pixels. When using a CupertinoButton within a fixed height parent, like a CupertinoNavigationBar, a smaller, or even EdgeInsets.zero, should be used to prevent clipping larger child widgets.""",
          ),
          SizedBox(height: 30),
          ElevatedButton(
            child: Text("Watch video tutorial"),
            onPressed: () {
              var url = 'https://www.youtube.com/watch?v=EQtXWemnMoQ';
              _launchURL(url);
            },
          ),
        ],
      ),
    );
  }
}

class CupertinoButtonCode extends CodeString {
  const CupertinoButtonCode();
  @override
  String buildCodeString() {
    return """
    CupertinoButton(
      child: Text('Tap me'),
        onPressed: () {
          //<do-something>
        },
    )
          """;
  }
}
