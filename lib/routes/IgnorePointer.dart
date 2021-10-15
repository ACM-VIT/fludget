import 'package:flutter/material.dart';

class IgnorePointerImplementation extends StatefulWidget {
  const IgnorePointerImplementation({Key? key}) : super(key: key);

  @override
  _IgnorePointerImplementationState createState() =>
      _IgnorePointerImplementationState();
}

class _IgnorePointerImplementationState
    extends State<IgnorePointerImplementation> {
  var ignore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      ignore = !ignore;
                    });
                  },
                  child: (ignore == false)
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Enable Ignore Pointer in\nRed and Blue',
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Disable Ignore Pointer in\nRed and Blue',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              (ignore == false)
                  ? Text(
                      'Ignore Pointer is Disabled',
                      style: TextStyle(fontSize: 20),
                    )
                  : Text(
                      'Ignore Pointer is Enabled',
                      style: TextStyle(fontSize: 20),
                    ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Stack(
                children: [
                  IgnorePointer(
                    ignoring: (ignore == false) ? false : true,
                    child: Container(
                      child: Material(
                        child: InkWell(
                          onTap: () {
                            print("tapped");
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.width * 0.8,
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          print("tapped");
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.width * 0.6,
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    color: Colors.yellow,
                  ),
                  IgnorePointer(
                    ignoring: (ignore == false) ? false : true,
                    child: Container(
                      child: Material(
                        child: InkWell(
                          onTap: () {
                            print("tapped");
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.width * 0.4,
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          print("tapped");
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.width * 0.2,
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    color: Colors.green,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IgnorePointerDescription extends StatelessWidget {
  const IgnorePointerDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 15, right: 15),
      child: Text(
        'Ignore Pointer Widget prevents their children’s widget from pointer-events which are taping, clicking, dragging, scrolling, and hover.',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
