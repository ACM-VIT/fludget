import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTextFieldSample extends StatefulWidget {
  const CupertinoTextFieldSample({Key? key}) : super(key: key);

  @override
  _CupertinoTextFieldSampleState createState() =>
      _CupertinoTextFieldSampleState();
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


class _CupertinoTextFieldSampleState extends State<CupertinoTextFieldSample> {
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
          Text("Enter anything ! "),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: CupertinoTextField(
              controller: _textController,
              placeholder: 'Type anything here...',
              style: TextStyle(color: Theme.of(context).primaryColorLight),
              cursorColor: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class CupertinoTextFieldDescription extends StatelessWidget {
  const CupertinoTextFieldDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              """
    An iOS-style text field.
    
    A text field lets the user enter text, either with a hardware keyboard or with an onscreen keyboard.
    
    This widget corresponds to both a UITextField and an editable UITextView on iOS.
    
    The text field calls the onChanged callback whenever the user changes the text in the field. If the user indicates that they are done typing in the field (e.g., by pressing a button on the soft keyboard), the text field calls the onSubmitted callback.
    
    It's important to always use characters when dealing with user input text that may contain complex characters. This will ensure that extended grapheme clusters and surrogate pairs are treated as single characters, as they appear to the user.
    
    For example, when finding the length of some user input, use string.characters.length. Do NOT use string.length or even string.runes.length. For the complex character "👨‍👩‍👦", this appears to the user as a single character, and string.characters.length intuitively returns 1. On the other hand, string.length returns 8, and string.runes.length returns 5!
    
    To control the text that is displayed in the text field, use the controller. For example, to set the initial value of the text field, use a controller that already contains some text
        """,
            ),
          ],
        ),
      ),
    );
  }
}

class CupertinoTextFieldCode extends CodeString {
  const CupertinoTextFieldCode();
  @override
  String buildCodeString() {
    return """
CupertinoTextField(
  controller: _textController,
  placeholder: 'Type anything here...',
),
          """;
  }
}
