import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class AboutDialogImp extends StatelessWidget {
  const AboutDialogImp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAboutDialog(
              context: context,
              applicationVersion: "1.0.0",
              applicationLegalese: "ACM Vit",
              applicationIcon: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/acm_logo.png"),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 20,
                  ),
                  child: Text(
                    "This is implemenation for about dialog in flutter",
                    style: TextStyle(fontFamily: 'RobotoSlab', fontSize: 17),
                  ),
                )
              ],
            );
          },
          child: Text(
            "Show about dialog",
            style: TextStyle(fontFamily: 'RobotoSlab', fontSize: 15),
          ),
        ),
      ),
    );
  }
}

class AboutDialogDesc extends StatelessWidget {
  const AboutDialogDesc({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "An about box. This is a dialog box with the application's icon, name, version number, and copyright, plus a button to show licenses for software used by the application.",
                  style: TextStyle(fontFamily: 'RobotoSlab', fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AboutDialogCode extends CodeString {
  const AboutDialogCode();
  @override
  String buildCodeString() {
    return """void showAboutDialog({
        required BuildContext context,
        String? applicationName,
        String? applicationVersion,
        Widget? applicationIcon,
        String? applicationLegalese,
        List<Widget>? children,
        bool useRootNavigator = true,
        RouteSettings? routeSettings,
      }) {
        assert(context != null);
        assert(useRootNavigator != null);
        showDialog<void>(
          context: context,
          useRootNavigator: useRootNavigator,
          builder: (BuildContext context) {
        return AboutDialog(
          applicationName: applicationName,
          applicationVersion: applicationVersion,
          applicationIcon: applicationIcon,
          applicationLegalese: applicationLegalese,
          children: children,
        );
          },
          routeSettings: routeSettings,
        );
      }""";
  }
}
