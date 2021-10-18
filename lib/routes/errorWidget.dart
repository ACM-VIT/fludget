import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

void Error() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    bool inDebug = false;
    assert(() {
      inDebug = true;
      return true;
    }());
    // In debug mode, use the normal error widget which shows
    // the error message:
    if (inDebug) {
      return ErrorWidget(details.exception);
    }
    // In release builds, show a yellow-on-blue message instead:
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Error!',
        style: const TextStyle(color: Colors.yellow),
        textDirection: TextDirection.ltr,
      ),
    );
  };
  // Here we would normally runApp() the root widget, but to demonstrate
  // the error handling we artificially fail:
  return runApp(ErrorWidgetImplementation());
}

class ErrorWidgetImplementation extends StatelessWidget {
  const ErrorWidgetImplementation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // Implementing a Text widget with "null" will end up throwing an error
          child: Builder(
        builder: (BuildContext context) {
          throw 'oh no, an error';
        },
      )),
    );
  }
}

class ErrorWidgetDescription extends StatelessWidget {
  const ErrorWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text(
          "The ErrorWidget widget is used to render an error message when a build method falls.",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class ErrorCode extends CodeString {
  const ErrorCode();
  @override
  String buildCodeString() {
    return """void Error() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    bool inDebug = false;
    assert(() { inDebug = true; return true; }());
    // In debug mode, use the normal error widget which shows
    // the error message:
    if (inDebug) {
      return ErrorWidget(details.exception);
    }
    // In release builds, show a yellow-on-blue message instead:
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Error!',
        style: const TextStyle(color: Colors.yellow),
        textDirection: TextDirection.ltr,
      ),
    );
  };
  // Here we would normally runApp() the root widget, but to demonstrate
  // the error handling we artificially fail:
  return runApp(ErrorWidgetImplementation());
}
""";
  }
}
