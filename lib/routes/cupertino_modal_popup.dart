import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoModalPopUpSample extends StatefulWidget {
  const CupertinoModalPopUpSample({Key? key}) : super(key: key);

  @override
  _CupertinoModalPopUpSampleState createState() =>
      _CupertinoModalPopUpSampleState();
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

class _CupertinoModalPopUpSampleState extends State<CupertinoModalPopUpSample> {
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
                'Show Modal Popup',
                style: TextStyle(
                    // color: Theme.of(context).primaryColorLight,
                    ),
              ),
            ),
            onPressed: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return CupertinoActionSheet(
                      title: Text("Hobbies"),
                      message: Text("Select your hobby"),
                      actions: <Widget>[
                        CupertinoActionSheetAction(
                          child: Text("Coding"),
                          onPressed: () {
                            Navigator.pop(context); //Dismissing modal popup
                            showSnackBarMessage(context,
                                'Happy Coding!'); //displaying snackbar message
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Text("Gaming"),
                          onPressed: () {
                            Navigator.pop(context);
                            showSnackBarMessage(context, 'Happy Gaming!');
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Text("Writing"),
                          onPressed: () {
                            Navigator.pop(context);
                            showSnackBarMessage(context, 'Happy Writing!');
                          },
                        ),
                      ],
                    );
                  });
            },
          ),
        ),
      ),
    );
  }
}

class CupertinoModalPopUpDescription extends StatelessWidget {
  const CupertinoModalPopUpDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            """
An action sheet is a specific style of alert that presents the user with a set of two or more choices related to the current context. An action sheet can have a title, an additional message, and a list of actions. The title is displayed above the message and the actions are displayed below this content.

This action sheet styles its title and message to match standard iOS action sheet title and message text style.

To display action buttons that look like standard iOS action sheet buttons, provide CupertinoActionSheetActions for the actions given to this action sheet.

To include a iOS-style cancel button separate from the other buttons, provide an CupertinoActionSheetAction for the cancelButton given to this action sheet.

An action sheet is typically passed as the child widget to showCupertinoModalPopup, which displays the action sheet by sliding it up from the bottom of the screen.
            """,
          ),
        ],
      ),
    );
  }
}

class CupertinoModalPopUpCode extends CodeString {
  const CupertinoModalPopUpCode();
  @override
  String buildCodeString() {
    return """
showCupertinoModalPopup(
  context: context,
  builder: (context) {
    return CupertinoActionSheet(
      title: Text("Hobbies"),
      message: Text("Select your hobby"),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: Text("Coding"),
          onPressed: () {
            Navigator.pop(context); //Dismissing modal popup
            showSnackBarMessage(context,
                'Happy Coding!'); //displaying snackbar message
          },
        ),
        CupertinoActionSheetAction(
          child: Text("Gaming"),
          onPressed: () {
            Navigator.pop(context);
            showSnackBarMessage(context, 'Happy Gaming!');
          },
        ),
        CupertinoActionSheetAction(
          child: Text("Writing"),
          onPressed: () {
            Navigator.pop(context);
            showSnackBarMessage(context, 'Happy Writing!');
          },
        ),
      ],
    );
});
          """;
  }
}
