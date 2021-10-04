import 'package:flutter/material.dart';

class OpacityImplementation extends StatefulWidget {
  const OpacityImplementation({Key? key}) : super(key: key);

  @override
  _OpacityImplementationState createState() => _OpacityImplementationState();
}

class _OpacityImplementationState extends State<OpacityImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://www.cnet.com/a/img/-qQkzFVyOPEoBRS7K5kKS0GFDvk=/940x0/2020/04/16/7d6d8ed2-e10c-4f91-b2dd-74fae951c6d8/bazaart-edit-app.jpg'),
                            fit: BoxFit.fill,
                          ),
                          // shape: BoxShape.circle,
                        ),
                        child: Text(""),
                        height: 200,
                        width: 200,
                        // color: Colors.red,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://www.cnet.com/a/img/-qQkzFVyOPEoBRS7K5kKS0GFDvk=/940x0/2020/04/16/7d6d8ed2-e10c-4f91-b2dd-74fae951c6d8/bazaart-edit-app.jpg'),
                          fit: BoxFit.fill,
                        ),
                        // shape: BoxShape.circle,
                      ),
                      child: Text(""),
                      height: 200,
                      width: 200,
                      // color: Colors.red,
                    ),
                  ],
                ),
                Text(
                    "Opacity can also be used to blend pictures. Here, two images are stacked together where one has opacity of 0.5 and other opacity of 1",
                    style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 1,
                  child: Container(
                    child: Text(""),
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                ),
                Text("1 opacity", style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.75,
                  child: Container(
                    child: Text(""),
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                ),
                Text(
                  "0.75 opacity",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    child: Text(""),
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                ),
                Text("0.5 opacity", style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.25,
                  child: Container(
                    child: Text(""),
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                ),
                Text("0.25 opacity", style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0,
                  child: Container(
                    child: Text(""),
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                ),
                Text("0 opacity", style: TextStyle(color: Colors.white))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OpacityDescription extends StatefulWidget {
  const OpacityDescription({Key? key}) : super(key: key);

  @override
  _OpacityDescriptionState createState() => _OpacityDescriptionState();
}

class _OpacityDescriptionState extends State<OpacityDescription> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
            "This is a Opacity widgetA widget that makes its child partially transparent.This class paints its child into an intermediate buffer and then blends the child back into the scene partially transparent.",
            style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
