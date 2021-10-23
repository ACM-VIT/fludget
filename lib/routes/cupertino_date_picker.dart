import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDatePickerSample extends StatefulWidget {
  const CupertinoDatePickerSample({Key? key}) : super(key: key);

  @override
  _CupertinoDatePickerSampleState createState() =>
      _CupertinoDatePickerSampleState();
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

class _CupertinoDatePickerSampleState extends State<CupertinoDatePickerSample> {
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
                'Pick Date',
                style: TextStyle(
                    // color: Theme.of(context).primaryColorLight,
                    ),
              ),
            ),
            onPressed: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 300.0,
                      child: CupertinoDatePicker(
                        backgroundColor: Colors.white,
                        // backgroundColor: Theme.of(context).colorScheme.secondary,
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: (dateTime) {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          // print('$dateTime changed');
                          showSnackBarMessage(
                              context, 'DateTime picked : $dateTime');
                        },
                      ),
                    );
                  });
            },
          ),
        ),
      ),
    );
  }
}

class CupertinoDatePickerDescription extends StatelessWidget {
  const CupertinoDatePickerDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            """
A date picker widget in iOS style.

There are several modes of the date picker listed in CupertinoDatePickerMode.

The class will display its children as consecutive columns. Its children order is based on internationalization, or the dateOrder property if specified.

Example of the picker in date mode:

US-English: | July | 13 | 2012 |
Vietnamese: | 13 | Tháng 7 | 2012 |
Can be used with showCupertinoModalPopup to display the picker modally at the bottom of the screen.

Sizes itself to its parent and may not render correctly if not given the full screen width. Content texts are shown with CupertinoTextThemeData.dateTimePickerTextStyle.
      """,
          ),
        ],
      ),
    );
  }
}

class CupertinoDatePickerCode extends CodeString {
  const CupertinoDatePickerCode();
  @override
  String buildCodeString() {
    return """
showCupertinoModalPopup(
  context: context,
  builder: (context) {
    return Container(
      height: 300.0,
      child: CupertinoDatePicker(
        backgroundColor: Colors.white,
        // backgroundColor: Theme.of(context).colorScheme.secondary,
        initialDateTime: DateTime.now(),
        onDateTimeChanged: (dateTime) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          // print('\$dateTime changed');
          showSnackBarMessage(
              context, 'DateTime picked : \$dateTime');
        },
      ),
    );
  })
          """;
  }
}
