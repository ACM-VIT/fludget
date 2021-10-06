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
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: <Widget>[
          ListView(
            children: [
              Center(
                child: Text(
                    "This is the First Screen Please Swipe Right to See More Screens",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Opacity(
                      opacity: 1,
                      child: Container(
                        child: Text(""),
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                    ),
                    Text("1 opacity", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Opacity(
                      opacity: 0.75,
                      child: Container(
                        child: Text(""),
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      "0.75 opacity",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Container(
                        child: Text(""),
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                    ),
                    Text("0.5 opacity", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Opacity(
                      opacity: 0.25,
                      child: Container(
                        child: Text(""),
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                    ),
                    Text("0.25 opacity", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Opacity(
                      opacity: 0,
                      child: Container(
                        child: Text(""),
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                    ),
                    Text("0 opacity", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ],
          ),
          ListView(
            children: [
              Center(
                child: Text(
                    "This is the Second Screen Please Swipe Right to See More Screens",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 200,
                  color: Colors.white,
                  child: ListTile(
                    enabled: true,
                    onTap: () {
                      showAlertDialog(context, "You have tapped the list Tile");
                    },
                    onLongPress: () {
                      showAlertDialog(
                          context, "You have Long Pressed the list Tile");
                    },
                    trailing: Icon(Icons.drag_indicator_sharp),
                    subtitle: Text("this is the subtitle"),
                    title: Text("This is the title"),
                    focusColor: Colors.white,
                    tileColor: Colors.white,
                    leading: Icon(Icons.supervised_user_circle),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 200,
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {},
                    onLongPress: () {},
                    child: ListTile(
                      enabled: false,
                      onTap: () {},
                      onLongPress: () {},
                      trailing: Icon(Icons.drag_indicator_sharp),
                      subtitle: Text("this is the subtitle"),
                      title: Text("This list tile is disabled"),
                      focusColor: Colors.white,
                      tileColor: Colors.white,
                      leading: Icon(Icons.supervised_user_circle),
                    ),
                  ),
                ),
              ),
            ],
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
