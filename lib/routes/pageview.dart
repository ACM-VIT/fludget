import 'package:flutter/material.dart';

class pageViewSample extends StatefulWidget {
  const pageViewSample({Key? key}) : super(key: key);

  @override
  _pageViewSampleState createState() => _pageViewSampleState();
}

class _pageViewSampleState extends State<pageViewSample> {
  showAlertDialog(BuildContext context, String str) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(str),
      content: Text("This is my message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  final PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: <Widget>[
          Center(
            child: Text(
                "This is the First Screen Please Swipe UP to See More Screens",
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center),
          ),
          Center(
            child: Text(
                "This is the Second Screen Please Swipe UP to See More Screens",
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center),
          ),
          Center(
            child: Text("This is the Third Screen ",
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}

class PageViewDescription extends StatefulWidget {
  const PageViewDescription({Key? key}) : super(key: key);

  @override
  _PageViewDescriptionState createState() => _PageViewDescriptionState();
}

class _PageViewDescriptionState extends State<PageViewDescription> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: Text(
      "A scrollable list that works page by page.Each child of a page view is forced to be the same size as the viewport.",
      style: TextStyle(color: Colors.white),
    )));
  }
}
