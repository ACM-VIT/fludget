import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSearchFieldSample extends StatefulWidget {
  const CupertinoSearchFieldSample({Key? key}) : super(key: key);

  @override
  _CupertinoSearchFieldSampleState createState() =>
      _CupertinoSearchFieldSampleState();
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

class _CupertinoSearchFieldSampleState
    extends State<CupertinoSearchFieldSample> {
  late TextEditingController _textController; //for search text field

  @override
  void initState() {
    super.initState();
    _textController =
        TextEditingController(text: ''); //for search text field initialization
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text("Search anything ! "),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: CupertinoSearchTextField(
              placeholder: 'Github/@Shah-Aayush',
              enabled:
                  true, //set to true if you want to enable the search text field.
              controller: _textController,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
              onSubmitted: (value) {
                showSnackBarMessage(context, '\'$value\' searched');
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CupertinoSearchFieldDescription extends StatelessWidget {
  const CupertinoSearchFieldDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              """
A CupertinoTextField that mimics the look and behavior of UIKit's UISearchTextField.

This control defaults to showing the basic parts of a UISearchTextField, like the 'Search' placeholder, prefix-ed Search icon, and suffix-ed X-Mark icon.

To control the text that is displayed in the text field, use the controller. For example, to set the initial value of the text field, use a controller that already contains some text.
        """,
            ),
          ],
        ),
      ),
    );
  }
}

class CupertinoSearchFieldCode extends CodeString {
  const CupertinoSearchFieldCode();
  @override
  String buildCodeString() {
    return """
 CupertinoSearchTextField(
  placeholder: 'Github/@Shah-Aayush',
  enabled:
      true, //set to true if you want to enable the search text field.
  controller: _textController,
  onSubmitted: (value) {
    showSnackBarMessage(context, '\'\$value\' searched');
  },
)
          """;
  }
}
