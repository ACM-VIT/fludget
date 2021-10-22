import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CupertinoPopUpSurfaceSample extends StatefulWidget {
  const CupertinoPopUpSurfaceSample({Key? key}) : super(key: key);

  @override
  State<CupertinoPopUpSurfaceSample> createState() =>
      _CupertinoPopUpSurfaceSampleState();
}

class _CupertinoPopUpSurfaceSampleState
    extends State<CupertinoPopUpSurfaceSample> {
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
                'Open popup surface',
                style: TextStyle(
                    // color: Theme.of(context).primaryColorLight,
                    ),
              ),
            ),
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
                        color: Theme.of(context).primaryColor,
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
        ),
      ),
    );
  }
}

class CupertinoPopUpSurfaceDescription extends StatelessWidget {
  const CupertinoPopUpSurfaceDescription({Key? key}) : super(key: key);

  _launchURL(String url) async {
    // const url = 'https://github.com/Shah-Aayush';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              """
Rounded rectangle surface that looks like an iOS popup surface, e.g., alert dialog and action sheet.

A CupertinoPopupSurface can be configured to paint or not paint a white color on top of its blurred area. Typical usage should paint white on top of the blur. However, the white paint can be disabled for the purpose of rendering divider gaps for a more complicated layout, e.g., CupertinoAlertDialog. Additionally, the white paint can be disabled to render a blurred rounded rectangle without any color (similar to iOS's volume control popup).
        """,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text("Watch video tutorial"),
              onPressed: () {
                var url = 'https://www.youtube.com/watch?v=2_y5YYkZoWM';
                _launchURL(url);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CupertinoPopUpSurfaceCode extends CodeString {
  const CupertinoPopUpSurfaceCode();
  @override
  String buildCodeString() {
    return """
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
              """;
  }
}
