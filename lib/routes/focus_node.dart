import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class FocusNodeImp extends StatefulWidget {
  const FocusNodeImp({Key? key}) : super(key: key);

  @override
  State<FocusNodeImp> createState() => _FocusNodeImpState();
}

class _FocusNodeImpState extends State<FocusNodeImp> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  bool isFocus1 = false;
  bool isFocus2 = false;
  @override
  void initState() {
    super.initState();
    focusNode1.addListener(() {
      setState(() {
        isFocus1 = focusNode1.hasFocus;
      });
    });
    focusNode2.addListener(() {
      setState(() {
        isFocus2 = focusNode2.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    focusNode1.dispose();
    focusNode2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                focusNode: focusNode1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "TextFiled 1",
                  suffixIcon: IconButton(
                    onPressed: () => focusNode2.requestFocus(),
                    icon: Icon(Icons.done),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                focusNode: focusNode2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "TextFiled 2",
                  suffixIcon: IconButton(
                    onPressed: () => focusNode2.unfocus(),
                    icon: Icon(Icons.done),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (focusNode1.hasFocus) {
                    focusNode1.unfocus();
                  } else {
                    focusNode1.requestFocus();
                  }
                },
                child: Text(
                  "${isFocus1 ? "Un Focus TextField 1" : "Focus TextField 1"}",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (focusNode2.hasFocus) {
                    focusNode2.unfocus();
                  } else {
                    focusNode2.requestFocus();
                  }
                },
                child: Text(
                  "${isFocus2 ? "Un Focus TextField 2" : "Focus TextField 2"}",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FocuNodeDesc extends StatelessWidget {
  const FocuNodeDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: DefaultTextStyle(
          style: const TextStyle(height: 1.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "An object that can be used by a stateful widget to obtain the keyboard focus and to handle keyboard events.",
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Class Constructor",
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 10,
              ),
              Text("""
FocusNode(
{String? debugLabel,
FocusOnKeyCallback? onKey,
FocusOnKeyEventCallback? onKeyEvent,
bool skipTraversal = false,
bool canRequestFocus = true,
bool descendantsAreFocusable = true}
)
              """)
            ],
          ),
        ),
      ),
    );
  }
}

class FocusNodeCode extends CodeString {
  const FocusNodeCode();

  @override
  String buildCodeString() {
    return """
    TextField(
                focusNode: focusNode1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "TextFiled 1",
                  suffixIcon: IconButton(
                    onPressed: () => focusNode2.requestFocus(),
                    icon: Icon(Icons.done),
                  ),
                ),
              ),
    """;
  }
}
