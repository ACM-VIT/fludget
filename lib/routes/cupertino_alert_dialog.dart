import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CupertinoAlertDialogSample extends StatefulWidget {
  const CupertinoAlertDialogSample({Key? key}) : super(key: key);

  @override
  _CupertinoAlertDialogSampleState createState() =>
      _CupertinoAlertDialogSampleState();
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

class _CupertinoAlertDialogSampleState
    extends State<CupertinoAlertDialogSample> {
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
                'Show Dialog',
                style: TextStyle(
                    // color: Theme.of(context).primaryColorLight,
                    ),
              ),
            ),
            onPressed: () {
              showCupertinoDialog(
                context: context,
                builder: (context) {
                  return CupertinoAlertDialog(
                    title: Text("Hi there 👋"),
                    content: Text("Do you want to know who made this section?"),
                    actions: <Widget>[
                      CupertinoDialogAction(
                        child: Text("No"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        isDestructiveAction: true, //shows option in red colour
                      ),
                      CupertinoDialogAction(
                        child: Text("Yes"),
                        onPressed: () {
                          Navigator.pop(context);
                          var url = 'https://github.com/Shah-Aayush';
                          _launchURL(url);
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class CupertinoAlertDialogDescription extends StatelessWidget {
  const CupertinoAlertDialogDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            """
An alert dialog informs the user about situations that require acknowledgement. An alert dialog has an optional title, optional content, and an optional list of actions. The title is displayed above the content and the actions are displayed below the content.

This dialog styles its title and content (typically a message) to match the standard iOS title and message dialog text style. These default styles can be overridden by explicitly defining TextStyles for Text widgets that are part of the title or content.

To display action buttons that look like standard iOS dialog buttons, provide CupertinoDialogActions for the actions given to this dialog.

Typically passed as the child widget to showDialog, which displays the dialog.
      """,
          ),
        ],
      ),
    );
  }
}

class CupertinoAlertDialogCode extends CodeString {
  const CupertinoAlertDialogCode();
  @override
  String buildCodeString() {
    return """
showCupertinoDialog(
  context: context,
  builder: (context) {
    return CupertinoAlertDialog(
      title: Text("Hi there 👋"),
      content: Text("Do you want to know who made this section?"),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text("No"),
          onPressed: () {
            Navigator.pop(context);
          },
          isDestructiveAction: true, //shows option in red colour
        ),
        CupertinoDialogAction(
          child: Text("Yes"),
          onPressed: () {
            _launchURL();
          },
        ),
      ],
    );
  },
)
          """;
  }
}
