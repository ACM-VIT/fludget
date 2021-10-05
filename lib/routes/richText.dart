import 'package:flutter/material.dart';

class RichTextWidget extends StatefulWidget {
  const RichTextWidget({Key? key}) : super(key: key);

  @override
  RichTextWidgetState createState() {
    return new RichTextWidgetState();
  }
}

class RichTextWidgetState extends State<RichTextWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body:
        Container(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                              child:

                              RichText(
                                textAlign: TextAlign.center,
                                softWrap: true,
                                textScaleFactor: 2,
                                textDirection: TextDirection.ltr,
                                text: TextSpan(

                                    text: 'Rich Text is a ',
                                    style: TextStyle(

                                        color: Colors.amber, fontSize: 28
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'lovely ',

                                          style: TextStyle(
                                              color: Colors.pinkAccent, fontSize: 30),

                                      ),
                                      TextSpan(text: 'sample ',
                                        style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                            color: Colors.redAccent, fontSize: 25),

                                      ),
                                      TextSpan(text: 'Widget ',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                            color: Colors.purpleAccent, fontSize: 35),

                                      )
                                    ]
                                ),
                              ),


                              ),
              )
        )
    );
  }

}

class RichTextWidgetDescription extends StatelessWidget {
  const RichTextWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                      Text(
                      "RichText Widget \n",
                      style: TextStyle(
                        fontSize: 26.0,
                        color: Colors.white,
                      ),
                    ),
              RichText(
                text: new TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: new TextStyle(
                      fontSize: 14.0, color: Colors.white, height: 1.2),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                      'The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints',
                    ),
                    TextSpan(
                        text: '\n\nSyntax\n\n',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        )),
                    TextSpan(
                        text: "Add the RichText() widget \n "
                            ": Define the Parent Text Span \n"
                            ": In the children attribute now define an array of Text Spans according to your need. \n \n \n"),
                    TextSpan(
                        text:
                        'RichText uses TextSpan as a parent object that has its own style property along with a text parameter which we can input the actual text. The parent object then can have a number of TextSpan objects as children who have their own style property that can be applied to respective text.')
                  ],
                ),
              ),
            ]

          )
        )
    );
  }

}