import 'package:flutter/material.dart';

class SimpleDialogImp extends StatelessWidget {
  const SimpleDialogImp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              return await showDialog(
                context: context,
                builder: (BuildContext ctx) => SimpleDialog(
                  title: Text('Choose food'),
                  children: [
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, "Pizza");
                      },
                      child: const Text('Pizza'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, "Burger");
                      },
                      child: const Text('Burger'),
                    ),
                  ],
                  elevation: 10,
                  //backgroundColor: Colors.green,
                ),
              );
            },
            child: Text("Show Simple Dialog"),
          ),
        ),
      ),
    );
  }
}

class SimpleDialodDesc extends StatelessWidget {
  const SimpleDialodDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyText1 ??
              const TextStyle(height: 1.5),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "A simple material design dialog.A simple dialog offers the user a choice between several options. A simple dialog has an optional title that is displayed above the choices.Choices are normally represented using SimpleDialogOption widgets.",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Class Definition / Syntax: ",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("""showDialog(
                context: context,
                builder: (BuildContext ctx) => SimpleDialog(
                  title: Text('Choose food'),
                  children: [
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, "Pizza");
                      },
                      child: const Text('Pizza'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, "Burger");
                      },
                      child: const Text('Burger'),
                    ),
                  ],
                  elevation: 10,
                  //backgroundColor: Colors.green,
                ),
              );""")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
