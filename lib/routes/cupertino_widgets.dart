import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class CupertinoWidgets extends StatefulWidget {
  const CupertinoWidgets({Key? key}) : super(key: key);

  @override
  State<CupertinoWidgets> createState() => _CupertinoWidgetsState();
}

class _CupertinoWidgetsState extends State<CupertinoWidgets> {
  var _lights = false; //for switch
  late TextEditingController _textController; //for search text field
  int? groupValue = 0; //for sliding segmented control
  Duration initialtimer = new Duration(); //for timer picker

  @override
  void initState() {
    super.initState();
    _textController =
        TextEditingController(text: ''); //for search text field initialization
  }

  Widget buildSegment(String text) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 22, color: Colors.black),
      ),
    );
  }

  void showSnackBarMessage(
    var context,
    var message,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
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

  _launchURL() async {
    const url = 'https://github.com/Shah-Aayush';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    List widgetNames = [
      'Cupertino Button',
      'Cupertino Action Sheet',
      'Cupertino action Indicator',
      'Cupertino Alert Dialog',
      'Cupertino Date Picker',
      'Cupertino Slider',
      'Cupertino Switch',
      'Cupertino Context Menu',
      'Cupertino Search Text Field',
      'Cupertino Popup Surface',
      'Cupertino Sliding Segmented',
      'Cupertino Text Field',
      'Cupertino Timer Picker',
    ];
    List cupertinoWidget = [
      // Text(
      //   'Cupertino Button',
      // ),
      CupertinoButton(
          child: Text('Tap me'),
          onPressed: () {
            showSnackBarMessage(context, 'Cupertino Button Pressed');
          }),
      CupertinoButton(
          child: Text('Show modal popup'),
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
          }),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('This is it : '),
          CupertinoActivityIndicator(),
        ],
      ),
      CupertinoButton(
        child: Text('Show dialog'),
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
                      _launchURL();
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
      CupertinoButton(
        child: Text('Cupertino Date Picker'),
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
      Container(
        child: Center(
          child: CupertinoSlider(
            onChanged: (value) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              showSnackBarMessage(context, 'value is set to $value');
            },
            value: 0.5,
          ),
        ),
      ),
      ListTile(
        title: CupertinoSwitch(
          value: _lights,
          onChanged: (bool value) {
            setState(() {
              _lights = value;
            });
          },
        ),
        trailing:
            _lights ? Icon(Icons.lightbulb) : Icon(Icons.lightbulb_outline),
        onTap: () {
          setState(() {
            _lights = !_lights;
          });
        },
      ),
      Center(
        child: SizedBox(
          width: 200,
          height: 30,
          child: CupertinoContextMenu(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.green, spreadRadius: 3),
                ],
              ),
              // color: Colors.yellow,
              child: Text(
                'Long press me',
                textAlign: TextAlign.center,
              ),
            ),
            actions: <Widget>[
              CupertinoContextMenuAction(
                child: const Text('Action one'),
                onPressed: () {
                  Navigator.pop(context);
                  showSnackBarMessage(context, 'Action one chosen');
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('Action two'),
                onPressed: () {
                  Navigator.pop(context);
                  showSnackBarMessage(context, 'Action two chosen');
                },
              ),
            ],
          ),
        ),
      ),
      CupertinoSearchTextField(
        placeholder: 'Github/@Shah-Aayush',
        enabled:
            true, //set to true if you want to enable the search text field.
        controller: _textController,
        onSubmitted: (value) {
          showSnackBarMessage(context, '\'$value\' searched');
        },
      ),
      CupertinoButton(
        child: Text("Open popup surface"),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (
              BuildContext context,
            ) =>
                CupertinoPopupSurface(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,
                  ),
                  height: 80,
                  width: 150,
                  child: Center(
                    child: Text(
                      "Nice 😎",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: CupertinoSlidingSegmentedControl<int>(
          backgroundColor: CupertinoColors.white,
          thumbColor: CupertinoColors.activeGreen,
          padding: EdgeInsets.all(8),
          groupValue: groupValue,
          children: {
            0: buildSegment("MacOS"),
            1: buildSegment("Windows"),
            2: buildSegment("Linux"),
          },
          onValueChanged: (value) {
            setState(() {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              groupValue = value;
              if (value == 0) {
                showSnackBarMessage(context, 'I love MacOS 🤩');
              } else if (value == 1) {
                showSnackBarMessage(context, 'I love Windows 🤩');
              } else if (value == 2) {
                showSnackBarMessage(context, 'I love linux 🤩');
              }
            });
          },
        ),
      ),
      CupertinoTextField(
        controller: _textController,
        placeholder: 'Type anything here...',
      ),
      CupertinoTimerPicker(
        mode: CupertinoTimerPickerMode.hms,
        minuteInterval: 1,
        secondInterval: 1,
        initialTimerDuration: initialtimer,
        onTimerDurationChanged: (Duration changedtimer) {
          setState(() {
            initialtimer = changedtimer;
          });
        },
      ),
    ];

    return CupertinoApp(
      //CupertinoApp is  used here instead of MaterialApp
      home: CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        //Cupertino Page scaffold used here instead of normal Scaffold widget
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Cupertino Widgets',
                    style: TextStyle(
                      // color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Expand list tile to see that widget in action!',
                    style: TextStyle(
                      // color: Colors.black,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // CupertinoButton(
                  //   onPressed: () {},
                  //   child: Text("Tap me"),
                  // ),
                  // WidgetListTile(),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: cupertinoWidget.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: EdgeInsets.only(bottom: 15),
                          child: WidgetListTile(
                            widgetNames[index],
                            cupertinoWidget[index],
                          ));
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      theme: CupertinoThemeData(primaryColor: Colors.blue),
    );
  }
}

class WidgetListTile extends StatelessWidget {
  final widgetName;
  final cupertinoWidget;
  WidgetListTile(
    this.widgetName,
    this.cupertinoWidget,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0xfff59778),
            // color: Colors.greenAccent,
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
      child: ExpansionTile(
        title: Text(
          widgetName,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        children: <Widget>[
          ListTile(
            title: cupertinoWidget,
            // Text(
            //   'des',
            //   style: TextStyle(
            //     fontWeight: FontWeight.w700,
            //   ),
            // ),
          )
        ],
      ),
    );
  }
}

class CupertinoWidgetsDescription extends StatelessWidget {
  // CupertinoWidgetsDescription();
  const CupertinoWidgetsDescription({Key? key}) : super(key: key);

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
        // borderRadius: BorderRadius.circular(5),
        color: Colors.pink,
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        // style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  Widget buildListViewContainer({
    required BuildContext context,
    required Widget child,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 1.2,
      child: Scrollbar(
        // isAlwaysShown: true,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var items = [
      'CupertinoApp',
      'CupertinoPageScaffold',
      'CupertinoButton',
      'CupertinoActionSheet',
      'CupertinoActivityIndicator',
      'CupertinoAlertDialog',
      'CupertinoDatePicker',
      'CupertinoDialog',
      'CupertinoDialogAction',
      'CupertinoFullscreenDialogTransition',
      'CupertinoPageScaffold',
      'CupertinoPageTransition',
      'CupertinoPicker',
      'CupertinoPopupSurface',
      'CupertinoScrollbar',
      'CupertinoSegmentedControl',
      'CupertinoSlider',
      'CupertinoSwitch',
      'CupertinoNavigationBar',
      'CupertinoTabBar',
      'CupertinoTabScaffold',
      'CupertinoTabView',
      'CupertinoTextField',
      'CupertinoTimePicker',
    ];

    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'Beautiful and high-fidelity widgets for current iOS design language.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  buildSectionTitle(context, 'List of Cupertino Widgets'),
                  buildListViewContainer(
                    context: context,
                    child: ListView.builder(
                      itemBuilder: (ctx, index) => Card(
                        color: Theme.of(context).colorScheme.secondary,
                        // color: Theme.of(context).accentColor,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child:
                              Text('${index + 1}. '.toString() + items[index]),
                        ),
                      ),
                      itemCount: items.length,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'By looking at some of the examples of Cupertino\'s use in this section, we can all see that while Flutter is cross-platform, the style can run regardless of the platform, such as the Android style on iOS and vice versa. I also hope that as users who have grown accustomed to the iOS style and then suddenly use a new application on iOS with the Android style, we can all see that even though Flutter is cross-platform, the style can run regardless of the platform. As a result of Cupertino, flutter developers can customize the design to fit their platforms.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                  ),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
            Text(
              'asdf',
            )
          ],
        ),
      ),
    );
  }
}
