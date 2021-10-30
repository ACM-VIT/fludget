import 'package:flutter/material.dart';

class FlowWidgetImplementation extends StatefulWidget {
  const FlowWidgetImplementation({Key? key}) : super(key: key);

  @override
  FlowWidgetState createState() {
    return new FlowWidgetState();
  }
}

class FlowWidgetState extends State<FlowWidgetImplementation> with SingleTickerProviderStateMixin {

  late AnimationController _myAnimation;
  final List<IconData> _icons = <IconData>[
    Icons.menu,
    Icons.email,
    Icons.settings,
    Icons.notifications,
    Icons.person,
    Icons.wifi,
  ];

  @override
  void initState() {
    super.initState();

     _myAnimation = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }

  Widget _buildItem(IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: RawMaterialButton(
        fillColor: Colors.deepOrangeAccent,
        shape: CircleBorder(),
        constraints: BoxConstraints.tight(Size.square(50.0)),
        onPressed: () {
          _myAnimation.status == AnimationStatus.completed
              ? _myAnimation.reverse()
              : _myAnimation.forward();
        },
        child: Icon(
          icon,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(


      padding: EdgeInsets.all(30.0),

      child:

        Flow(
          delegate: FlowDemoDelegate(myAnimation: _myAnimation),
          children: _icons
              .map<Widget>((IconData icon) => _buildItem(icon))
              .toList(),
        ),


    )
    );

  }
}

class FlowDemoDelegate extends FlowDelegate {

  FlowDemoDelegate({required this.myAnimation}) : super(repaint: myAnimation);

  final Animation<double> myAnimation;

  @override
  void paintChildren(FlowPaintingContext context) {
    for (int i = context.childCount - 1; i >= 0; i--) {
      double dx = (context.getChildSize(i)!.height + 10) * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(0, dx * myAnimation.value + 10, 0),
      );
    }
  }

  @override
  bool shouldRepaint( FlowDemoDelegate oldDelegate) {

    return myAnimation != oldDelegate.myAnimation;
  }
}

class FlowWidgetDescription extends StatelessWidget {
  const FlowWidgetDescription({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flow Widget \n',
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
                    'Flow is a widget that sizes and positions its children efficiently according to the logic of a FlowDelegate. This widget is useful when the children need to be repositioned using transformation matrices. For example, if you need to create an animation that transforms the position of the children.'
                  ),
                  TextSpan(
                      text: '\n\nSyntax\n\n',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                      )),
                  TextSpan(
                      text: "Add the Flow widget\n"
                          ": Define an object of the FlowDelegate class\n"
                          ": Define the children widgets you want to display in the Flow widget\n \n \n"),
                  TextSpan(
                      text:
                          "Flow widget is appropriate when you need to make an animation that repositions the children.\n\n"
                      "The only challenge in making the Flow widget is to define the FlowDelegate class\n\n"
                      "In order to do so you have to override two functions\n\n"
                      "1. void paintChildren(FlowPaintingContext context) using context.paintChild method to describe the animations of the children\n\n"
                      "2. bool shouldRepaint(MyFlowDelegate oldDelegate)\n")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
