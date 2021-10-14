import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetImplementation extends StatelessWidget {
  const CupertinoActionSheetImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              child: Text(
                "Click to Display Sheet with only options",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              onTap: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) => CupertinoActionSheet(
                      actions: [
                        CupertinoActionSheetAction(
                             onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Text1')),
                        CupertinoActionSheetAction(
                             onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Text2')),
                        CupertinoActionSheetAction(
                             onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Text3'))
                      ],

                    ));
              },
            ),
            GestureDetector(
              child: Text(
                "Click to Display Sheet with a destructive button",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              onTap: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) => CupertinoActionSheet(
                      actions: [
                        CupertinoActionSheetAction(
                             onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Text1')),
                        CupertinoActionSheetAction(
                             onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Text2')),
                        CupertinoActionSheetAction(
                           onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Text3'),
                          isDestructiveAction: true,
                        )
                      ],
                    ));
              },
            ),
            GestureDetector(
              child: Text(
                "Click to Display Sheet with options and a cancel button",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              onTap: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) => CupertinoActionSheet(
                      actions: [
                        CupertinoActionSheetAction(
                             onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Text1')),
                        CupertinoActionSheetAction(
                             onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Text2')),
                        CupertinoActionSheetAction(
                             onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Text3'))
                      ],
                      cancelButton: CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel Button')),
                    ));
              },
            ),
            GestureDetector(
              child: Text(
                "Click to Display Sheet with title, options and a cancel button",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              onTap: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) => CupertinoActionSheet(
                      title: Text(
                        'Title of the Action Sheet',
                        style: TextStyle(color: Colors.black),
                      ),
                      actions: [
                        CupertinoActionSheetAction(
                             onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Text1')),
                        CupertinoActionSheetAction(
                             onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Text2')),
                        CupertinoActionSheetAction(
                             onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Text3'))
                      ],
                      message: Text("Message of Action sheet"),
                      cancelButton: CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel Button')),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CupertinoActionSheetDescription extends StatelessWidget {
  const CupertinoActionSheetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          'An action sheet is an iOS style of alert that presents the user with a set of choices related to the current context. An action sheet can have a title, an additional message, and a list of actions',
        ),
      ),
    );
  }
}