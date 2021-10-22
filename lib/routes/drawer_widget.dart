import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

final scaffoldKey = GlobalKey<ScaffoldState>();

class DrawerImplementation extends StatelessWidget {
  const DrawerImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(),
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "FLUDGET",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (scaffoldKey.currentState!.isDrawerOpen) {
                    scaffoldKey.currentState?.openEndDrawer();
                  } else {
                    scaffoldKey.currentState?.openDrawer();
                  }
                },
                child: Text("Close Drawer"),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState?.openEndDrawer();
            } else {
              scaffoldKey.currentState?.openDrawer();
            }
          },
          child: Text("Open Drawer"),
        ),
      ),
    );
  }
}

class DrawerDescription extends StatelessWidget {
  const DrawerDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle(
        style: const TextStyle(height: 1.5),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "A material design panel that slides in horizontally from the edge of a Scaffold to show navigation links in an application.",
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Sytanx or Class definition",
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                """
const Drawer(
{Key? key,
double elevation,
Widget? child,
String? semanticLabel}
)""",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerCode extends CodeString {
  const DrawerCode();

  @override
  String buildCodeString() {
    return """
    Drawer(
    child: ListView(
          padding: EdgeInsets.only(),
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "FLUDGET",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (scaffoldKey.currentState!.isDrawerOpen) {
                    scaffoldKey.currentState?.openEndDrawer();
                  } else {
                    scaffoldKey.currentState?.openDrawer();
                  }
                },
                child: Text("Close Drawer"),
              ),
            )
          ],
        ),
      ),
      """;
  }
}
