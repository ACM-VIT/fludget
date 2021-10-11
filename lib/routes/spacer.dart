import 'package:fludget/constants/colors.dart';
import 'package:fludget/routes/sizedbox.dart';
import 'package:flutter/material.dart';

class SpacerImplementation extends StatelessWidget {
  const SpacerImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "When you have align some widget to the corners:",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              _firstRow(),
              const SizedBox(
                height: 10,
              ),
              _secondRow(),
              const SizedBox(
                height: 10,
              ),
              _thirdRow(),
              const SizedBox(
                height: 10,
              ),
              _fourthRow(),
              const SizedBox(
                height: 10,
              ),
              _fifthRow(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Note: By default the flex property of spacer is one. This can be modified so that you can use spacer with particular aspect ratio",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              _flexRowOne(),
              const SizedBox(
                height: 10,
              ),
              _flexRowTwo(),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.grey[800],
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Spacer(
                      flex: 3,
                    ),
                    Container(
                      width: 50,
                      height: 30,
                      color: Colors.red,
                    ),
                    Spacer(
                      flex: 5,
                    ),
                    Container(
                      width: 50,
                      height: 30,
                      color: Colors.red,
                    ),
                    Spacer(
                      flex: 3,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _flexRowTwo() {
    return Container(
      color: Colors.grey[800],
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
          Spacer(
            flex: 8,
          ),
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
          Spacer(
            flex: 4,
          ),
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  Container _flexRowOne() {
    return Container(
      color: Colors.grey[800],
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
          Spacer(
            flex: 2,
          ),
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
          Spacer(
            flex: 7,
          ),
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  Container _fifthRow() {
    return Container(
      color: Colors.grey[800],
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
          Spacer(),
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
          Spacer(),
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  Container _fourthRow() {
    return Container(
      color: Colors.grey[800],
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
          Spacer(),
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  Container _thirdRow() {
    return Container(
      color: Colors.grey[800],
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
          Spacer(),
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  Container _secondRow() {
    return Container(
      color: Colors.grey[800],
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
          Spacer(),
        ],
      ),
    );
  }

  Container _firstRow() {
    return Container(
      color: Colors.grey[800],
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Spacer(),
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}

class SpacerDescription extends StatelessWidget {
  const SpacerDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backroundColor,
      body: SingleChildScrollView(
        child: DefaultTextStyle(
          style: TextStyle(color: Colors.white, height: 1.5),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\t\t\t\tSpacer creates an adjustable, empty spacer that can be used to tune the spacing between widgets in a Flex container, like Row or Column.",
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "\t\t\t\tThe Spacer widget will take up any available space, so setting the Flex.mainAxisAlignment on a flex container that contains a Spacer to MainAxisAlignment.spaceAround, MainAxisAlignment.spaceBetween, or MainAxisAlignment.spaceEvenly will not have any visible effect: the Spacer has taken up all of the additional space, therefore there is none left to redistribute.",
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Syntax or Class Definition",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Text(
                  """
  const Spacer({Key? key, this.flex = 1})
  : assert(flex != null),
    assert(flex > 0),
    super(key: key);
""",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
