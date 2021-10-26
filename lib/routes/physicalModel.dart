import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class PhysicalModelImplementation extends StatelessWidget{
  const PhysicalModelImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Center(
                  child: Text(
                    "\n\nBox without shadows\n",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    height: 120.0,
                    width: 120.0,
                    color: Colors.blue,
                ),
              ],
            ),
            Center(
              child: Text(
                "\n\n\n\nPhysical Models\n",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    "Rectangular physical model with shadow\n",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                PhysicalModel(
                  elevation: 16.0,
                  shape: BoxShape.rectangle,
                  shadowColor: Colors.orange,
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    "\n\n\nCircular physical model with shadow\n",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                PhysicalModel(
                  elevation: 16.0,
                  shape: BoxShape.circle,
                  shadowColor: Colors.orange,
                  color: Colors.red,
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    "\n\n\n\nShadow colors can be changed\n",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Rectangular physical model with green shadow\n",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                PhysicalModel(
                  elevation: 16.0,
                  shape: BoxShape.rectangle,
                  shadowColor: Colors.green,
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                "\n\n\n\nBehind the scenes\n",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                "The physical model is clipped to the child\n",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    "Circle model clipped to rectangular child\n",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                PhysicalModel(
                  elevation: 16.0,
                  shape: BoxShape.circle,
                  shadowColor: Colors.green,
                  color: Colors.red,
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blue.withOpacity(0.3),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ],
        )
      )
    );
  }
}

class PhysicalModelDescription extends StatelessWidget {
  const PhysicalModelDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "A widget representing a physical layer that clips its children to a shape.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "It allows you to add custom shadow effects to your app and customize its color and shape.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Physical layers cast shadows based on an elevation which is nominally in logical pixels, coming vertically out of the rendering surface.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}

class PhysicalModelCode extends CodeString{
  const PhysicalModelCode();

  @override
  String buildCodeString() {
    return """
          PhysicalModel(
            elevation: 16.0,
            shape: BoxShape.circle,
            shadowColor: Colors.green,
            color: Colors.red,
            child: Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.blue.withOpacity(0.3)
              )
            )
          )
           """;
  }
}