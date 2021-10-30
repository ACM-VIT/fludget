import 'package:fludget/Models/codeString.dart';
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
        fillColor: Theme.of(context).primaryColor,
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
    return Scaffold(
      body: SingleChildScrollView(
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyText1 ??
              const TextStyle(height: 1.5),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Flow is a widget that sizes and positions its children efficiently according to the logic of a FlowDelegate. This widget is useful when the children need to be repositioned using transformation matrices. For example, if you need to create an animation that transforms the position of the children.\n\n"
                  "Add the Flow widget\n"
                  "Define an object of the FlowDelegate class\n"
                    "Define the children widgets you want to display in the Flow widget\n \n \n"
                      "Flow widget is appropriate when you need to make an animation that repositions the children.\n\n"
                      "The only challenge in making the Flow widget is to define the FlowDelegate class\n\n"
                      "In order to do so you have to override two functions\n\n"
                      "1. void paintChildren(FlowPaintingContext context) using context.paintChild method to describe the animations of the children\n\n"
                      "2. bool shouldRepaint(MyFlowDelegate oldDelegate)\n",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FlowCode extends CodeString {
  const FlowCode();

  @override
  String buildCodeString() {
    return """ Flow(
    delegate: 
      FlowDemoDelegate(
               myAnimation :
                _myAnimation
                  ),
    children: _icons.map<Widget>
      (
           (IconData icon) => 
              _buildItem(icon)
      ).toList(),
    ),""";
  }
}
