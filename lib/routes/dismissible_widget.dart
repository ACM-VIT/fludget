import 'package:flutter/material.dart';

class DismissibleSample extends StatefulWidget {
  const DismissibleSample({Key? key}) : super(key: key);

  @override
  State<DismissibleSample> createState() => _DismissibleSampleState();
}

class _DismissibleSampleState extends State<DismissibleSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Dismissible(
            key: UniqueKey(),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Swipe left or right to delete!",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  leading: Icon(Icons.keyboard_arrow_left),
                  subtitle: Text("Dismiss without background color"),
                ),
              ],
            ),
          ),
          Dismissible(
            key: UniqueKey(),
            background: Container(
              color: Colors.orangeAccent,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Swipe left or right to delete",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.orange,
                  ),
                  leading: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.orange,
                  ),
                  subtitle:
                      Text("Dismiss left or right with same color effect"),
                ),
              ],
            ),
          ),
          Dismissible(
            key: UniqueKey(),
            background: Container(
              color: Colors.green,
            ),
            secondaryBackground: Container(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Swipe left or right to delete",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.blue,
                  ),
                  leading: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.green,
                  ),
                  subtitle: Text(
                      "Dismiss left or right with different background colors"),
                ),
              ],
            ),
          ),
          Dismissible(
            key: UniqueKey(),
            background: Container(
              color: Colors.orange,
            ),
            direction: DismissDirection.vertical,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Swipe up or down to delete",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: Icon(
                    Icons.arrow_upward,
                    color: Colors.orange,
                  ),
                  leading: Icon(
                    Icons.arrow_downward,
                    color: Colors.orange,
                  ),
                  subtitle:
                      Text("Dismiss vertical with background color effect"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DismissibleDescription extends StatelessWidget {
  const DismissibleDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Wrap(children: [
        Container(
          child: Text(
            "Ever wondered how flutter handles the call or message gesture animation you often see in Samsung phones? Say hi to the Dismissible Widget. This widget provides you beautiful swipe animations to remove any ListTile or list element from a List. Just Wrap the ListView widget in a Dismissible Widget and you are golden !",
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
        ),
        Container(
            child: Text("Example :",
                style: TextStyle(fontSize: 18))),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Container(
          child: Text(''' Dismissible(
              key: UniqueKey(),
              background: Container(
                color: Colors.orange,
              ),
              direction: DismissDirection.vertical,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Your Title Text",
                      style: TextStyle(fontSize: 24),
                    ),
                    subtitle:
                        Text("Your Text"),
                  ),
                  Divider()
                ],
              ),
            ) ''', style: TextStyle(fontSize: 18)),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.45,
        ),
        Container(
          child: Text(
              "It also has an \" onDismissed \" property which lets you call setState method inside it incase you want to edit any sort of collection or user inerfaces present in the code",
              style: TextStyle(fontSize: 18)),
        ),
      ]),
    );
  }
}
