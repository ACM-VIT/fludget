import 'package:flutter/material.dart';

class SizedboxImplementation extends StatefulWidget {
  const SizedboxImplementation({Key? key}) : super(key: key);

  @override
  State<SizedboxImplementation> createState() => _SizedboxImplementationState();
}

class _SizedboxImplementationState extends State<SizedboxImplementation> {
  var x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 465,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 16.0, left: 8, right: 8, bottom: 20),
                    child: Center(
                      child: Text(
                        'Below Image is a child of Sized Box',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                        height: (x == 0)
                            ? 400
                            : (x == 1)
                                ? 300
                                : 200,
                        width: (x == 0)
                            ? 400
                            : (x == 1)
                                ? 300
                                : 200,
                        child: Image.asset('assets/images/logo.png')),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                onPressed: () {
                  x = x + 1;
                  x = x % 3;

                  setState(() {});
                },
                child: Text(
                  'Change Dimensions of Sized Box',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                child: Text(
                  'Below Boxes are separated by an empty sized box placed between them.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 200,
                width: 300,
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Text(
                    'Box 1',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 200,
                width: 300,
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Text(
                    'Box 2',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SizedboxDescription extends StatelessWidget {
  const SizedboxDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 15, right: 15),
      child: Text(
        'SizedBox is a built-in widget in flutter SDK. It is a simple box with a specified size. It can be used to set size constraints to the child widget, put an empty SizedBox between the two widgets to get some space in between, or something else. It is somewhat similar to a Container widget with fewer properties.',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
