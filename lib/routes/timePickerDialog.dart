import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePickerDialogImplementation extends StatelessWidget {
  const TimePickerDialogImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              showTimePicker(context: context, initialTime: TimeOfDay.now()),
          child: Text("Show Time Picker"),
        ),
      ),
    );
  }

  Future<TimeOfDay?> showTimePicker({
    required BuildContext context,
    required TimeOfDay initialTime,
    TransitionBuilder? builder,
    bool useRootNavigator = true,
    TimePickerEntryMode initialEntryMode = TimePickerEntryMode.dial,
    String? cancelText,
    String? confirmText,
    String? helpText,
    String? errorInvalidText,
    String? hourLabelText,
    String? minuteLabelText,
    RouteSettings? routeSettings,
  }) async {
    assert(debugCheckHasMaterialLocalizations(context));

    final Widget dialog = TimePickerDialog(
      initialTime: initialTime,
      initialEntryMode: initialEntryMode,
      cancelText: cancelText,
      confirmText: confirmText,
      helpText: helpText,
      //errorInvalidText: errorInvalidText,
      //hourLabelText: hourLabelText,
      //minuteLabelText: minuteLabelText,
    );
    return showDialog<TimeOfDay>(
      context: context,
      useRootNavigator: useRootNavigator,
      builder: (BuildContext context) {
        return builder == null ? dialog : builder(context, dialog);
      },
      routeSettings: routeSettings,
    );
  }
}

class TimePickerDialogDescription extends StatelessWidget {
  const TimePickerDialogDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text(
          "Time Picker Dialog shows a dialog containing a material design time picker.",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class TimePickerDialogCode extends CodeString {
  const TimePickerDialogCode();
  @override
  String buildCodeString() {
    return """Future<TimeOfDay?> showTimePicker({
    required BuildContext context,
    required TimeOfDay initialTime,
    TransitionBuilder? builder,
    bool useRootNavigator = true,
    TimePickerEntryMode initialEntryMode = TimePickerEntryMode.dial,
    String? cancelText,
    String? confirmText,
    String? helpText,
    String? errorInvalidText,
    String? hourLabelText,
    String? minuteLabelText,
    RouteSettings? routeSettings,
  }) async {
    assert(context != null);
    assert(initialTime != null);
    assert(useRootNavigator != null);
    assert(initialEntryMode != null);
    assert(debugCheckHasMaterialLocalizations(context));

    final Widget dialog = TimePickerDialog(
      initialTime: initialTime,
      initialEntryMode: initialEntryMode,
      cancelText: cancelText,
      confirmText: confirmText,
      helpText: helpText,
      errorInvalidText: errorInvalidText,
      hourLabelText: hourLabelText,
      minuteLabelText: minuteLabelText,
    );
    return showDialog<TimeOfDay>(
      context: context,
      useRootNavigator: useRootNavigator,
      builder: (BuildContext context) {
        return builder == null ? dialog : builder(context, dialog);
      },
      routeSettings: routeSettings,
    );
  }""";
  }
}
