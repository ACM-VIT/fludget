import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

//Documentaion of FLutter Widgets
class WidgetsDoc extends StatefulWidget {
  const WidgetsDoc({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  _WidgetsDocState createState() => _WidgetsDocState();
}

class _WidgetsDocState extends State<WidgetsDoc> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Widget Library"),
      ),
      body: Stack(children: [
        WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {},
          onPageFinished: (finish) {
            setState(() {
              isLoading = false;
            });
          },
        ),
        isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox()
      ]),
    );
  }
}
