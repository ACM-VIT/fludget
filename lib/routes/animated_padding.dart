import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class AnimatedPaddingImp extends StatefulWidget {
  const AnimatedPaddingImp({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingImp> createState() => _AnimatedPaddingImpState();
}

class _AnimatedPaddingImpState extends State<AnimatedPaddingImp> {
  double paddingValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (paddingValue == 20) {
                      paddingValue = 40;
                    } else {
                      paddingValue = 20;
                    }
                  });
                },
                child: Text(
                  "Change Padding",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'RobotoSlab',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Without Animated Padding",
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'RobotoSlab',
                ),
              ),
              GridView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(paddingValue),
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Theme.of(context).primaryColor,
                    ),
                  );
                },
              ),
              Text(
                "With Animated Padding",
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'RobotoSlab',
                ),
              ),
              GridView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return AnimatedPadding(
                    padding: EdgeInsets.all(paddingValue),
                    duration: const Duration(seconds: 1),
                    curve: Curves.decelerate,
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Theme.of(context).primaryColor,
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedPaddingDesc extends StatelessWidget {
  const AnimatedPaddingDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: DefaultTextStyle(
          style: const TextStyle(height: 1.5),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Animated version of Padding which automatically transitions the indentation over a given duration whenever the given inset changes.",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'RobotoSlab',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Syntax or Class definition",
                  //style: Theme.of(context).textTheme.headline5,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'RobotoSlab',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  """
AnimatedPadding(
{Key? key,
required EdgeInsetsGeometry padding,
Widget? child,
Curve curve = Curves.linear,
required Duration duration,
VoidCallback? onEnd}
)
                """,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'RobotoSlab',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedPaddingCode extends CodeString {
  const AnimatedPaddingCode();

  @override
  String buildCodeString() {
    return """
    AnimatedPadding(
      padding: EdgeInsets.all(paddingValue),
      duration: const Duration(seconds: 1),
      curve: Curves.decelerate,
      child: Container(
        height: 50,
        width: 50,
        color: Theme.of(context).primaryColor,
      ),
    );
    """;
  }
}
