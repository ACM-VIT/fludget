import 'package:flutter/material.dart';

class TntractiveViewerImp extends StatelessWidget {
  const TntractiveViewerImp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          child: ClipRect(
            child: InteractiveViewer(
              constrained: false,
              panEnabled: true,
              child: Image.asset('assets/images/_product.png'),
            ),
          ),
        ),
      ),
    );
  }
}

class IntInteractiveViewerDesc extends StatelessWidget {
  const IntInteractiveViewerDesc({Key? key}) : super(key: key);

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
                  "By wrapping up your widgets in Interactive Viewer you can do actions such as drag, drop, zoom etc. with your widgets and not only that but with the introduction of Flutter version 1.20 the drag and drop capabilities have became even more polished.",
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
                Text("""InteractiveViewer(
              constrained: false,
              panEnabled: true,
              child: Image.asset('assets/images/_product.png'),
            )""")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
