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
                    color: Theme.of(context).colorScheme.primary,
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
                  shadowColor: Theme.of(context).colorScheme.secondary,
                  color: Theme.of(context).colorScheme.onBackground,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    color: Theme.of(context).colorScheme.primary,
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
                  shadowColor: Theme.of(context).colorScheme.secondary,
                  color: Theme.of(context).colorScheme.onBackground,
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary,
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
                    "Rectangular physical model with another shadow color\n",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                PhysicalModel(
                  elevation: 16.0,
                  shape: BoxShape.rectangle,
                  shadowColor: Theme.of(context).colorScheme.primaryVariant,
                  color: Theme.of(context).colorScheme.onBackground,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    color: Theme.of(context).colorScheme.primary,
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
                  shadowColor: Theme.of(context).colorScheme.secondary,
                  color: Theme.of(context).colorScheme.onBackground,
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
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
            shadowColor: Theme.of(context).colorScheme.secondary,
            color: Theme.of(context).colorScheme.onBackground,
            child: Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
              ),
            ),
          ),
           """;
  }
}