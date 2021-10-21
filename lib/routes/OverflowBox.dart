import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class OverflowBoxImplementation extends StatelessWidget {
  const OverflowBoxImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Below is the implementation of OverFlowBox Widget.\n\nSizedBox having Overflown Container as it\'s child.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Stack(
                children: [
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: OverflowBox(
                      maxHeight: 400,
                      maxWidth: 400,
                      child: Container(
                        color: Theme.of(context).primaryColor,
                        width: 300,
                        height: 400,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('SizedBox'),
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OverflowBoxDescription extends StatelessWidget {
  const OverflowBoxDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 15, right: 15),
      child: Text(
        'A widget that imposes different constraints on its child than it gets from its parent, possibly allowing the child to overflow the parent.',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class OverflowBoxCode extends CodeString {
  const OverflowBoxCode();

  @override
  String buildCodeString() {
    return """OverFlowBox Code(
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: OverflowBox(
                      maxHeight: 400,
                      maxWidth: 400,
                      child: Container(
                        color: Theme.of(context).primaryColor,
                        width: 300,
                        height: 400,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('SizedBox'),
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
""";
  }
}
