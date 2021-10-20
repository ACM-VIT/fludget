import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class BackdropFilterImplementation extends StatelessWidget {
  const BackdropFilterImplementation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        Text('0' * 10000),
        Column(
          children: <Widget>[
            Center(
              child: ClipOval(
                // <-- clips to the 200x200 [Container] below
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 200.0,
                    height: 200.0,
                    child: const Text('Blur',style: TextStyle(fontSize: 50),),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: ClipRect(
                // <-- clips to the 200x200 [Container] below
                child: BackdropFilter(
                  filter: ImageFilter.matrix(Matrix4.rotationZ(0.2).storage),
                  child: Container(
                    alignment: Alignment.center,
                    width: 200.0,
                    height: 200.0,
                    child: const Text('Matrix Rotation',style: TextStyle(fontSize: 30),),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: ClipRect(
                // <-- clips to the 200x200 [Container] below
                child: BackdropFilter(
                  filter: ImageFilter.compose(outer: ImageFilter.blur(sigmaX: 5.0,
                    sigmaY: 5.0,), inner: ImageFilter.matrix(Matrix4.rotationZ(0.3).storage)),
                  child: Container(
                    alignment: Alignment.center,
                    width: 200.0,
                    height: 200.0,
                    child: const Text('Compose',style: TextStyle(fontSize: 30),),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );

    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          height: 500,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Text('0' * 10000),
              Center(
                child: ClipRect(
                  // <-- clips to the 200x200 [Container] below
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5.0,
                      sigmaY: 5.0,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: 200.0,
                      height: 200.0,
                      child: const Text('Blur'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          height: 500,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              new ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  child: new FlutterLogo()),
              new Center(
                child: new ClipOval(
                  child: new BackdropFilter(
                    filter: new ImageFilter.matrix(Matrix4.rotationZ(0.5).storage),
                    child: new Container(
                      width: 200.0,
                      height: 200.0,
                      decoration: new BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.5)),
                      child: new Center(
                        child: new Text('Frosted',
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    )));
  }
}

class BackdropFilterDescription extends StatelessWidget {
  const BackdropFilterDescription({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '''A widget that applies a filter to the existing painted content and then paints child. The filter will be applied to all the area within its parent or ancestor widget's clip. If there's no clip, the filter will be applied to the full screen. ''',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class BackdropFilterCode extends CodeString {
  const BackdropFilterCode();
  @override
  String buildCodeString() {
    return """Stack(
  fit: StackFit.expand,
  children: <Widget>[
    Text('0' * 10000),
    Center(
      child: ClipRect(  // <-- clips to the 200x200 [Container] below
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Container(
            alignment: Alignment.center,
            width: 200.0,
            height: 200.0,
            child: const Text('Hello World'),
          ),
        ),
      ),
    ),
  ],
)""";
  }
}
