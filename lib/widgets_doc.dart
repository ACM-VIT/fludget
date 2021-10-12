import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WidgetsDoc extends StatefulWidget {
  const WidgetsDoc({Key? key}) : super(key: key);

  @override
  _WidgetsDocState createState() => _WidgetsDocState();
}

class _WidgetsDocState extends State<WidgetsDoc> {

  WebViewController? _controller;
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Flutter Widgets"),
      ),
      body: Stack(
        children: [
        WebView(
        initialUrl: 'https://api.flutter.dev/flutter/widgets/widgets-library.html',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
        },
        onPageFinished: (finish) {
          setState(() {
            isLoading = false;
          });
        },
      ),
      isLoading ? Center( child: CircularProgressIndicator(),) : SizedBox()
    ]),
    );
  }
}
