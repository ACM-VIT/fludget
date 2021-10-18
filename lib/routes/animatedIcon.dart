import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedIconSample extends StatefulWidget {
  const AnimatedIconSample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AnimatedIconSampleState();
}

class _AnimatedIconSampleState extends State<AnimatedIconSample>
    with TickerProviderStateMixin {
  List<AnimatedIconData> icons = [
    AnimatedIcons.ellipsis_search,
    AnimatedIcons.play_pause,
    AnimatedIcons.menu_arrow,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: icons.map((e) => _mountAnimatedIcon(e)).toList(),
        )),
      ),
    );
  }

  Widget _mountAnimatedIcon(AnimatedIconData icon) {
    AnimationController controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    return GestureDetector(
      onTap: () {
        if (controller.status == AnimationStatus.completed) {
          controller.reverse();
        } else {
          controller.forward();
        }
      },
      child: AnimatedIcon(
        icon: icon,
        size: 75.0,
        progress: controller,
      ),
    );
  }
}

class AnimatedIconDescription extends StatelessWidget {
  const AnimatedIconDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'AnimatedIcon Widget \n',
              style: TextStyle(
                fontSize: 26.0,
              ),
            ),
            RichText(
              text: new TextSpan(
                style: Theme.of(context).textTheme.bodyText1,
                children: <TextSpan>[
                  TextSpan(
                      text:
                          'An AnimatedIcon widget is an icon that can be animated using an AnimationController in response to '
                          'user input. For example, nesting an AnimatedIcon in a GestureDetector widget allows for animating the icon '
                          'when the icon is tapped. AnimatedIcon widgets can also be nested in MouseRegions and be animated when the '
                          'user hovers over the icon. Each AnimatedIcon requires an AnimationController to be passed into the progress '
                          'parameter. To create an Animation Controller, use the TickerProviderStateMixin with the stateful widget and '
                          'refer to it using the "this" keyword. To run the animation easily, use the methods forward() and reverse(). '
                          'There are currently 14 unique animated icons, including icons for play buttons, menus, and searching. View '
                          'the full list of options through the provided link.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedIconCode extends CodeString {
  const AnimatedIconCode();
  @override
  String buildCodeString() {
    return """Widget _mountAnimatedIcon(AnimatedIconData icon) {
    AnimationController controller = AnimationController(
      vsync: this, 
      duration: Duration(seconds: 1)
    );
    return GestureDetector(
      onTap: () {
        if (controller.status == AnimationStatus.completed) {
          controller.reverse();
        } else {
          controller.forward();
        }
      },
      child: AnimatedIcon(
        icon: icon,
        size: 75.0,
        progress: controller,
      ),
    );
  }
}""";
  }
}
